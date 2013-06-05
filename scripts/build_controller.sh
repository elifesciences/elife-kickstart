#!/bin/bash
set -e

#
# Prepare controller module
#
# Usage: scripts/build_controller.sh <profile_name> <profile_code> from the profile main directory.
#

codeprepare () {
  INPUT=$1
  echo $INPUT | tr A-Z a-z | sed -e 's/[^a-zA-Z0-9\-]/_/g'
}

profile_name_def="LN"
PROFILE_NAME=${1:-${profile_name_def}}

profile_code_def=$( codeprepare $PROFILE_NAME )
PROFILE_CODE=${2:-${profile_code_def}}

if [ -d sites_all/modules/custom ] && [ ! -d sites_all/modules/custom/${PROFILE_CODE}_controller ] && [ -d controller_tmpl ] && [ -d controller_tmpl/ln_controller ]; then
  echo "Preparing controller module for ${PROFILE_CODE}_kickstart..."
  rm -rf controller_tmp
  cp -r controller_tmpl controller_tmp
  cd controller_tmp/ln_controller

  for file in ln_*
  do
    mv "$file" "${PROFILE_CODE}_${file#ln_}"
  done

  for file in *
  do
    sed -i "" "s/{PROFILE_NAME}/${PROFILE_NAME}/g" "$file"
    sed -i "" "s/{PROFILE_CODE}/${PROFILE_CODE}/g" "$file"
  done

  cd ../..
  echo "Creating controller module for ${PROFILE_CODE}_kickstart..."
  mv controller_tmp/ln_controller sites_all/modules/custom/${PROFILE_CODE}_controller
  rm -rf controller_tmp
fi