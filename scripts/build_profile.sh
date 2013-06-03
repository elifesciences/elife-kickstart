#!/bin/bash
set -e

#
# Prepare install profile
#
# Usage: scripts/build_profile.sh <profile_name> <profile_code> from the profile main directory.
#

PROFILE_NAME=$1
PROFILE_CODE=$2

cp -r profile_tmpl profile_tmp
cd profile_tmp/ln_kickstart

for file in ln_*; do mv "$file" "${PROFILE_CODE}_${file#ln_}"; done;

# now do search and replace in all files for {PROFILE_NAME} and {PROFILE_CODE}

cd ..
mv ln_kickstart ../profiles/${PROFILE_CODE}_kickstart