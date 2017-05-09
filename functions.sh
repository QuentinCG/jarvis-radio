#!/usr/bin/env bash

jv_pg_rt_show_audio_stream_list()
{
  json_list=`echo "$var_jv_pg_rt_audio_stream_list" | jq -c '.[]'`
  audio_stream_list=""
  while read i; do
    audio_stream=`echo "$i" | jq -r ".name"`
    if [ -n "$audio_stream_list" ]; then
      audio_stream_list="$audio_stream_list, "
    fi
    audio_stream_list="${audio_stream_list}${audio_stream}"
  done  <<< "$json_list"

  # TODO: say
  echo "$audio_stream_list"
}

jv_pg_rt_show_video_stream_list()
{
  json_list=`echo "$var_jv_pg_rt_video_stream_list" | jq -c '.[]'`
  video_stream_list=""
  while read i; do
    video_stream=`echo "$i" | jq -r ".name"`
    if [ -n "$video_stream_list" ]; then
      video_stream_list="$video_stream_list, "
    fi
    video_stream_list="${video_stream_list}${video_stream}"
  done  <<< "$json_list"

  # TODO: say
  echo "$video_stream_list"
}

# Play an audio stream (web radio, radio, ...)
# $1 (string): Audio stream name
jv_pg_rt_play_audio_stream()
{
  # TODO: Use audio stream name
  nohup cvlc $1 >/dev/null 2>/dev/stdout & disown
}

# Play a video stream (TV, ...)
# $1 (string): Video stream name
jv_pg_rt_play_video_stream()
{
  # Check if showing video as full screen or not
  local full_screen=""
  if [[ $var_jv_pg_yp_video_full_screen =~ "True" ]]; then
    full_screen="--fullscreen"
  fi

  # Launch the stream
  # TODO: Use video stream name
  nohup cvlc $full_screen $1 >/dev/null 2>/dev/stdout & disown
}

# Stop a launched stream
jv_pg_rt_stop_stream()
{
  pkill vlc

  return 0
}
