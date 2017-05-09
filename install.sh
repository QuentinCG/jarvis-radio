#!/usr/bin/env bash

# Install stream player (VLC)
[[ -z $(which vlc) ]] && sudo apt-get --yes --force-yes install vlc

# Install JSON parser
[[ -z $(which jq) ]] && sudo apt-get --yes --force-yes install jq
