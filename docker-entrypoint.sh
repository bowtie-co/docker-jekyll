#!/bin/bash

set -e

if [ -f Gemfile ]; then
  bundle install
fi

if [ "$1" == "serve" ]; then
  exec jekyll serve --port $PORT --host $HOST
else
  exec $@
fi
