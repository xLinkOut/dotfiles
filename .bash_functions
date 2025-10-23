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

function download_quavlive() {
    local video_url=${1:?Specify the .mpd URL};
    local output_filename=${2:?Specify the output filename};
    yt-dlp "${video_url}" --output "Video/${output_filename}.mp4" --concurrent-fragments 8
}

function youtube_to_audio {
  local video_url=${1:?Specify the Youtube URL};
  LC_ALL=en_US.UTF-8 yt-dlp -x \
    --audio-format "m4a/best/mp3" \
    --audio-quality 0 \
    --no-embed-chapters \
    --parse-metadata "%(title)s:%(meta_title)s" \
    --parse-metadata "%(uploader)s:%(meta_artist)s" \
    --embed-thumbnail \
    --convert-thumbnails jpg \
    --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" \
    --cookies-from-browser chrome \
    --output "%(title)s.%(ext)s" \
    --restrict-filenames \
    "$video_url"
}
