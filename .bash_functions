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

function ffmpeg_h265 () { 
    local input_file=${1:Specify input file};
    local output_file=${2:Specify output file};
    ffmpeg -i "${input_file}" -map 0 -map -v -map V -map -0:d -c:v libx265 -c:s copy -crf 25 -max_muxing_queue_size 4096 "${output_file}"
}
