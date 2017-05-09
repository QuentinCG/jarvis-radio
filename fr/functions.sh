#!/usr/bin/env bash

jv_pg_rt_lang()
{
  case "$1" in
    audio_list) echo "Liste des radios: $2.";;
    video_list) echo "Liste des chaines: $2.";;

    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
