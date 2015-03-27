#!/bin/bash
set -e

#
# Prepare install profile
#
# Usage: scripts/build_profile.sh <profile_name> <profile_code> from the profile main directory.
#

codeprepare () {
  INPUT=$1
  echo "${INPUT}" | tr A-Z a-z | sed -e 's/[^a-zA-Z0-9\-]/_/g'
}

profile_name_def="LN"
PROFILE_NAME=${1:-${profile_name_def}}

profile_code_def=$( codeprepare "${PROFILE_NAME}" )
PROFILE_CODE=${2:-${profile_code_def}}

if [ -d profile_tmpl ] && [ -d profile_tmpl/tmpl_kickstart ]; then
  echo "Preparing install profile ${PROFILE_CODE}..."
  if [ ! -d profiles ]; then
    mkdir profiles
  fi
  rm -rf profile_tmp
  cp -r profile_tmpl profile_tmp
  cd profile_tmp/tmpl_kickstart

  # now do search and replace in all files for {PROFILE_NAME} and {PROFILE_CODE}
  for file in *
  do
    sed -e "s?{PROFILE_NAME}?${PROFILE_NAME}?g" --in-place "$file"
    sed -e "s?{PROFILE_CODE}?${PROFILE_CODE}?g" --in-place "$file"
  done

  for file in tmpl_*
  do
    if [ ! -f "${PROFILE_CODE}${file#tmpl_kickstart}" ]; then
      mv "$file" "${PROFILE_CODE}${file#tmpl_kickstart}"
    fi
  done

  cd ..
  rm -rf ../profiles/${PROFILE_CODE}
  echo "Creating install profile ${PROFILE_CODE}..."
  rm -rf profiles/${PROFILE_CODE}
  mv tmpl_kickstart ../profiles/${PROFILE_CODE}
  cd ..
  rm -rf profile_tmp
fi
