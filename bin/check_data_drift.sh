#!/bin/sh

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
NO_COLOR='\033[0m'

MSG_CLEAN="\n${GREEN}Ruby and JSON data are consistent.${NO_COLOR}"
MSG_DRIFT="\n${RED}Ruby and JSON data are out-of-sync. If you updated the Ruby data, consider
regenerating the JSON with the rake task and committing the change:

    bundle exec rake address_helper:generate_data${NO_COLOR}"

bundle exec rake address_helper:generate_data

if [ -z "$(git status --porcelain)" ]; then
  echo "$MSG_CLEAN"
else
  echo "$MSG_DRIFT" && exit 1
fi
