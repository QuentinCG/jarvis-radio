# Video configuration
var_jv_pg_rt_video_full_screen="True" # Show video as full screen (True/False)

# Audio stream (webradio, radio, ...)
# Non exhaustive web-radio list: https://www.internet-radio.com/
# Non exaustive french radio list: https://doc.ubuntu-fr.org/liste_radio_france
var_jv_pg_rt_audio_stream_list='{"audioList":[
    {"name": "Alpes 1 Grenoble", "address": "http://alpes1grenoble.ice.infomaniak.ch/alpes1grenoble-high.mp3"},
    {"name": "Classic Rock", "address": "http://uk5.internet-radio.com:8251/listen.pls&t=.m3u"},
    {"name": "BFM", "address": "http://bfmbusiness.cdn.dvmr.fr/bfmbusiness"},
    {"name": "Chérie FM", "address": "http://cdn.nrjaudio.fm/audio1/fr/30201/mp3_128.mp3?origine=fluxradios"},
    {"name": "Europe 1", "address": "http://mp3lg3.scdn.arkena.com/10489/europe1.mp3"},
    {"name": "France Bleu Isère", "address": "http://direct.francebleu.fr/live/fbisere-midfi.mp3"},
    {"name": "Fun radio", "address": "http://streaming.radio.funradio.fr:80/fun-1-44-128"},
    {"name": "NRJ", "address": "http://cdn.nrjaudio.fm/adwz1/fr/30043/aac_64.mp3"},
    {"name": "Virgin Radio", "address": "http://mp3lg4.tdf-cdn.com/9243/lag_164753.mp3"}
]}'

# Video stream (TV, ...)
# Non exhaustive TV list: https://sourcetv.info/france-working-free-iptv-url-rtmp-m3u-smart-tv-kodi-list-08052017/
var_jv_pg_rt_video_stream_list='{"videoList":[
    {"name": "TF1", "address": "http://www.q7t1.com:8000/live/dona/dona/207.ts"},
    {"name": "France 2", "address": "http://www.q7t1.com:8000/live/dona/dona/208.ts"},
    {"name": "France 3", "address": "http://www.q7t1.com:8000/live/dona/dona/209.ts"},
    {"name": "France 4", "address": "http://www.q7t1.com:8000/live/dona/dona/820.ts"},
    {"name": "France 5", "address": "http://www.q7t1.com:8000/live/dona/dona/210.ts"},
    {"name": "France O", "address": "http://www.q7t1.com:8000/live/dona/dona/228.ts"},
    {"name": "M6", "address": "http://www.q7t1.com:8000/live/dona/dona/216.ts"}
]}'
