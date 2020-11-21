# Alsa-plugins-speex-update

To get the correct speex & speexdsp and then update alsa-plugins
`curl -sL https://raw.githubusercontent.com/StuartIanNaylor/Alsa-plugins-speex-update/main/Alsa-plugins-speex-update.sh  | sudo -E bash -`

To install ec & alsa_plugin_fifo

`curl -sL https://raw.githubusercontent.com/StuartIanNaylor/Alsa-plugins-speex-update/main/install-ec-fifo.sh  | sudo -E bash -`

Load snd_aloop on boot

`echo 'snd-aloop' | sudo tee -a  /etc/modules`


