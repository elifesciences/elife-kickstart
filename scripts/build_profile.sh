#!/bin/bash
set -e

#
# Prepare install profile
#
# Usage: scripts/build_profile.sh <profile_name> <profile_code> from the profile main directory.
#

PROFILE_NAME=$1
PROFILE_CODE=$2

rm -Rf profile_tmp
cp -r profile_tmpl profile_tmp
cd profile_tmp/ln_kickstart

for file in $ln_*
do
  mv "$file" "${PROFILE_CODE}_${file#ln_}"
  sed -i "" "s/{PROFILE_NAME}/${PROFILE_NAME}/g" "${PROFILE_CODE}_${file#ln_}"
  sed -i "" "s/{PROFILE_CODE}/${PROFILE_CODE}_kickstart/g" "${PROFILE_CODE}_${file#ln_}"
done

# now do search and replace in all files for {PROFILE_NAME} and {PROFILE_CODE}

cd ..
rm -Rf ../profiles/${PROFILE_CODE}_kickstart
mv ln_kickstart ../profiles/${PROFILE_CODE}_kickstart
cd ..
rm -Rf profile_tmp