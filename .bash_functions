#!/usr/bin/env bash

function ssh-test-host () {
  local host=${1:?Specify an host};
  ssh -q -o ConnectTimeout=10 "${host}" exit
  if [ $? -ne 0 ]; then
    echo "Failed to connect to $host"
    exit 1
  else
    echo "Successfully connected to $host"
  fi
}
