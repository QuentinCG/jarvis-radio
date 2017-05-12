# Video configuration
var_jv_pg_rt_video_full_screen="True" # Show video as full screen (True/False)

# Audio stream (webradio, radio, ...)
# Non exhaustive web-radio list: https://www.internet-radio.com/
# Non exaustive french radio list: https://doc.ubuntu-fr.org/liste_radio_france
var_jv_pg_rt_audio_stream_list='[
    {"name": "Alpes 1 Grenoble", "address": "http://alpes1grenoble.ice.infomaniak.ch/alpes1grenoble-high.mp3"},
    {"name": "BFM", "address": "http://bfmbusiness.cdn.dvmr.fr/bfmbusiness"},
    {"name": "Chérie FM", "address": "http://cdn.nrjaudio.fm/audio1/fr/30201/mp3_128.mp3?origine=fluxradios"},
    {"name": "Europe 1", "address": "http://mp3lg3.scdn.arkena.com/10489/europe1.mp3"},
    {"name": "France Bleu Isère", "address": "http://direct.francebleu.fr/live/fbisere-midfi.mp3"},
    {"name": "Fun radio", "address": "http://streaming.radio.funradio.fr:80/fun-1-44-128"},
    {"name": "NRJ", "address": "http://cdn.nrjaudio.fm/adwz1/fr/30043/aac_64.mp3"},
    {"name": "Virgin Radio", "address": "http://mp3lg4.tdf-cdn.com/9243/lag_164753.mp3"}
]'

# Video stream (IPTV, ...)
# The list below may not work properly (add your own IPTV links if you want more stable video stream)
# Non exhaustive TV list (HIGHLY INSTABLE): https://sourcetv.info/category/europe-iptv/france-iptv/
# If you have SFRbox: Get all TV list in file http://tv.sfr.fr/television-sur-ordinateur-par-internet/ (not tested)
# If you have a Freebox: Get all TV list in file http://mafreebox.freebox.fr/freeboxtv/playlist.m3u (not tested)
# If you have a BouygueTelecomBox: Get all TV list in file http://www.m3u.fr/bouyguestv.m3u (not tested)
# If you have an OrangeBox: Not possible for free...
# If you want a paid IPTV (very stable): http://iptv-france.com/
var_jv_pg_rt_video_stream_list='[
    {"name": "TF1", "address": "http://www.q7t1.com:8000/live/dona/dona/207.ts"},
    {"name": "France 2", "address": "http://www.q7t1.com:8000/live/dona/dona/208.ts"},
    {"name": "France 3", "address": "http://www.q7t1.com:8000/live/dona/dona/209.ts"},
    {"name": "France 4", "address": "http://www.q7t1.com:8000/live/dona/dona/820.ts"},
    {"name": "France 5", "address": "http://www.q7t1.com:8000/live/dona/dona/210.ts"},
    {"name": "France O", "address": "http://www.q7t1.com:8000/live/dona/dona/228.ts"},
    {"name": "M6", "address": "http://www.q7t1.com:8000/live/dona/dona/216.ts"},
    {"name": "Amazing Facts TV", "address": "http://bglive-w.bitgravity.com/amazingfacts/live/feed01"}
]'
