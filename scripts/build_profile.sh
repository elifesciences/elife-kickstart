#!/bin/bash
set -e

#
# Prepare install profile
#
# Usage: scripts/build_profile.sh <profile_name> <profile_code> from the profile main directory.
#

codeprepare () {
  INPUT=$1
  echo $INPUT | tr A-Z a-z | sed -e 's/[^a-zA-Z0-9\-]/_/g'
}

profile_name_def="LN"
PROFILE_NAME=${1:-${profile_name_def}}

profile_code_def=$( codeprepare $PROFILE_NAME )
PROFILE_CODE=${2:-${profile_code_def}}

if [ -d profile_tmpl ] && [ -d profile_tmpl/ln_kickstart ]; then
  echo "Preparing install profile ${PROFILE_CODE}_kickstart..."
  if [ ! -d profiles ]; then
    mkdir profiles
  fi
  rm -rf profile_tmp
  cp -r profile_tmpl profile_tmp
  cd profile_tmp/ln_kickstart

  for file in ln_*
  do
    mv "$file" "${PROFILE_CODE}_${file#ln_}"
    sed -i "" "s/{PROFILE_NAME}/${PROFILE_NAME}/g" "${PROFILE_CODE}_${file#ln_}"
    sed -i "" "s/{PROFILE_CODE}/${PROFILE_CODE}_kickstart/g" "${PROFILE_CODE}_${file#ln_}"
  done

  # now do search and replace in all files for {PROFILE_NAME} and {PROFILE_CODE}
  cd ..
  rm -rf ../profiles/${PROFILE_CODE}_kickstart
  echo "Creating install profile ${PROFILE_CODE}_kickstart..."
  rm -rf profiles/${PROFILE_CODE}_kickstart
  mv ln_kickstart ../profiles/${PROFILE_CODE}_kickstart
  cd ..
  rm -rf profile_tmp
fi