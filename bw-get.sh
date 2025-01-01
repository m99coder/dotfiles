#!/usr/bin/env bash

# requires the following environment variables to be set
# export BW_CLIENTID="xxx"
# export BW_CLIENTSECRET="yyy"
# export BW_PASSWORD="zzz"

if ! bw login --check > /dev/null; then
  BW_SESSION="$(bw login --raw --apikey)"
  export BW_SESSION
fi

if ! bw unlock --check > /dev/null; then
  # if --passwordenv BW_PASSWORD does not work, use --passwordfile <file> instead
  BW_SESSION="$(bw unlock --raw --passwordenv $BW_PASSWORD)"
  export BW_SESSION
fi

bw list items --session $BW_SESSION --search "$1"
