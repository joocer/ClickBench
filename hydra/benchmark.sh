#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# install `psql` if necessary, e.g.:
sudo apt-get update -y
sudo apt-get install -y postgresql-client

# load data
echo -n "Load time: "
command time -f '%e' psql "$DATABASE_URL" -t -f create.sql

# run test
DATABASE_URL="$DATABASE_URL" ./run.sh 2>&1 | tee log.txt

# parse results for json file
./parse.sh < log.txt
