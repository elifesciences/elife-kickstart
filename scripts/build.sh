#!/bin/bash
set -e

#
# Build the distribution using the same process used on Drupal.org
#
# Usage: scripts/build.sh [-y] <destination> <profile_name> <profile_code> from the profile main directory.
#

confirm () {
  read -r -p "${1:-Are you sure? [Y/n]} " response
  case $response in
    [yY][eE][sS]|[yY])
      true
      ;;
    *)
      false
      ;;
  esac
}

codeprepare () {
  INPUT=$1
  echo "${INPUT}" | tr A-Z a-z | sed -e 's/[^a-zA-Z0-9\-]/_/g'
}

# Figure out directory real path.
realpath () {
  TARGET_FILE=$1

  cd `dirname $TARGET_FILE`
  TARGET_FILE=`basename $TARGET_FILE`

  while [ -L "$TARGET_FILE" ]
  do
    TARGET_FILE=`readlink $TARGET_FILE`
    cd `dirname $TARGET_FILE`
    TARGET_FILE=`basename $TARGET_FILE`
  done

  PHYS_DIR=`pwd -P`
  RESULT=$PHYS_DIR/$TARGET_FILE
  echo $RESULT
}

usage() {
  echo "Usage: build.sh [-y] <DESTINATION_PATH> <PROFILE_NAME> <PROFILE_CODE>" >&2
  echo "Use -y to skip deletion confirmation" >&2
  exit 1
}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

profiles_folder=false
if [ -d profiles ]; then
  profiles_folder=true
fi

profile_name_def="LN"

DESTINATION=$1
PROFILE_NAME=${2:-${profile_name_def}}
profile_code_def=$( codeprepare "${PROFILE_NAME}" )
PROFILE_CODE=${3:-${profile_code_def}}
ASK=true

while getopts ":y" opt; do
  case $opt in
    y)
      DESTINATION=$2
      PROFILE_NAME=${3:-${profile_name_def}}
      profile_code_def=$( codeprepare $PROFILE_NAME )
      PROFILE_CODE=${4:-${profile_code_def}}
      ASK=false
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      usage
      ;;
  esac
done

if [ "x$DESTINATION" == "x" ]; then
  usage
fi

if [ ! -f drupal-org.make ]; then
  echo "[error] Run this script from the distribution base path."
  exit 1
fi

DESTINATION=$(realpath $DESTINATION)

case $OSTYPE in
  darwin*)
    TEMP_BUILD=`mktemp -d -t tmpdir`
    ;;
  *)
    TEMP_BUILD=`mktemp -d`
    ;;
esac
# Drush make expects destination to be empty.
rmdir $TEMP_BUILD

if [ -d $DESTINATION ]; then
  echo "Removing existing destination: $DESTINATION"
  if $ASK; then
    confirm && chmod -R 777 $DESTINATION && rm -rf $DESTINATION
    if [ -d $DESTINATION ]; then
      echo "Aborted."
      exit 1
    fi
  else
    chmod -R 777 $DESTINATION && rm -rf $DESTINATION
  fi
  echo "done"
fi

# Build the profile.
echo "Building the profile..."
rm -rf tmp
drush make --no-cache --no-core --contrib-destination drupal-org.make tmp
if [ -d sites_all ]; then
  cp -r sites_all/* tmp
fi

# Build a drupal-org-core.make file if it doesn't exist.
if [ ! -f drupal-org-core.make ]; then
  cat >> drupal-org-core.make <<EOF
api = 2
core = 7.x
projects[drupal] = 7
EOF
fi

# Prepare the install profile.
if [ "${PROFILE_NAME}" != "x" ]; then
  . ${DIR}/build_profile.sh "${PROFILE_NAME}" "${PROFILE_CODE}"
  . ${DIR}/build_controller.sh "${PROFILE_NAME}" "${PROFILE_CODE}"
fi

# Build the distribution and copy the profile in place.
echo "Building the distribution..."
drush make drupal-org-core.make $TEMP_BUILD

# Prepare .travis.yml
cp $TEMP_BUILD/sites/tests/build/travis-ci-yml $TEMP_BUILD/.travis.yml
sed -e "s?%KICKSTART_PROFILE_CODE%?${PROFILE_CODE}?g" --in-place $TEMP_BUILD/.travis.yml
sed -e "s?%KICKSTART_PROFILE_NAME%?${PROFILE_NAME}?g" --in-place $TEMP_BUILD/.travis.yml

echo -n "Moving to destination... "
cp -r tmp/* $TEMP_BUILD/sites/all
rm -rf tmp
if [ -d profiles ]; then
  cp -r profiles/* $TEMP_BUILD/profiles
  rm -rf profiles/${PROFILE_CODE}_kickstart
  if [ $profiles_folder == false ]; then
    rm -rf profiles
  fi
fi
mv $TEMP_BUILD $DESTINATION
echo "done"
