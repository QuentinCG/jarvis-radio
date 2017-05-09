#!/usr/bin/env bash

# Say the list of all audio stream
jv_pg_rt_show_audio_stream_list()
{
  local json_list=`echo "$var_jv_pg_rt_audio_stream_list" | jq -c '.[]'`
  local audio_stream_list=""
  while read i; do
    local audio_stream=`echo "$i" | jq -r ".name"`
    if [ -n "$audio_stream_list" ]; then
      audio_stream_list="$audio_stream_list, "
    fi
    audio_stream_list="${audio_stream_list}${audio_stream}"
  done  <<< "$json_list"

  say "$(jv_pg_rt_lang video_list $audio_stream_list)"
}

# Say the list of all video stream
jv_pg_rt_show_video_stream_list()
{
  local json_list=`echo "$var_jv_pg_rt_video_stream_list" | jq -c '.[]'`
  local video_stream_list=""
  while read i; do
    local video_stream=`echo "$i" | jq -r ".name"`
    if [ -n "$video_stream_list" ]; then
      video_stream_list="$video_stream_list, "
    fi
    video_stream_list="${video_stream_list}${video_stream}"
  done  <<< "$json_list"

  say "$(jv_pg_rt_lang video_list $video_stream_list)"
}

# Play an audio stream (web radio, radio, ...)
# $1 (string): Audio stream name
#
# return (int): 0 if stream name found, 1 if not found
jv_pg_rt_play_audio_stream()
{
  local requested_audio="$1" #"$(jv_sanitize "$1")"
  local audio_stream_url=""
  local json_list=`echo "$var_jv_pg_rt_audio_stream_list" | jq -c '.[]'`

  while read i; do
    local audio_stream=`echo "$i" | jq -r ".name"`
    if [ "$requested_audio" == "$audio_stream" ]; then
      local audio_stream_url=`echo "$i" | jq -r ".address"`
      nohup cvlc "$audio_stream_url" >/dev/null 2>/dev/stdout & disown
      return 0
    fi
  done  <<< "$json_list"

  return 1
}

# Play a video stream (TV, ...)
# $1 (string): Video stream name
#
# return (int): 0 if stream name found, 1 if not found
jv_pg_rt_play_video_stream()
{
  # Check if showing video as full screen or not
  local full_screen=""
  if [[ $var_jv_pg_yp_video_full_screen =~ "True" ]]; then
    full_screen="--fullscreen"
  fi

  # Launch the stream
  local requested_video="$1" #"$(jv_sanitize "$1")"
  local video_stream_url=""
  local json_list=`echo "$var_jv_pg_rt_video_stream_list" | jq -c '.[]'`

  while read i; do
    local video_stream=`echo "$i" | jq -r ".name"`
    if [ "$requested_video" == "$video_stream" ]; then
      local video_stream_url=`echo "$i" | jq -r ".address"`
      nohup cvlc $full_screen "$video_stream_url" >/dev/null 2>/dev/stdout & disown
      return 0
    fi
  done  <<< "$json_list"

  return 1
}

# Stop a launched stream
jv_pg_rt_stop_stream()
{
  pkill vlc

  return 0
}
