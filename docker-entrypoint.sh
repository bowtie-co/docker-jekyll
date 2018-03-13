#!/bin/bash

set -e

if [ -f Gemfile ]; then
  bundle install
fi

echo "FIRST $1"

opts=""

if [ "$1" == "serve" ]; then
  exec jekyll serve --port $PORT --host $HOST
else
  exec $@
fi
