# Alsa-plugins-speex-update

To get the correct speex & speexdsp and then update alsa-plugins
```curl -sL https://raw.githubusercontent.com/StuartIanNaylor/Alsa-plugins-speex-update/main/Alsa-plugins-speex-update.sh  | sudo -E bash -```

To install ec & alsa_plugin_fifo
```curl -sL https://raw.githubusercontent.com/StuartIanNaylor/Alsa-plugins-speex-update/main/install-ec-fifo.sh  | sudo -E bash -```

Load snd_aloop on boot
```echo 'snd-aloop' | sudo tee -a  /etc/modules```

IMHO 'Device' is a bad name for a USB Card but we can asign the name we want to any card.
`lsusb` and get the vendor and product ids. On my Pi it returns

```
Bus 001 Device 005: ID 1b3f:2008 Generalplus Technology Inc.
Bus 001 Device 004: ID 248a:00da Maxxter
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp. SMSC9512/9514 Fast Ethernet Adapter
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp. SMC9514 Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```
```
echo 'SUBSYSTEM!="sound", GOTO="my_usb_audio_end"' | sudo tee -a  /etc/udev/rules.d/70-alsa-permanent.rules
echo 'ACTION!="add", GOTO="my_usb_audio_end"' | sudo tee -a  /etc/udev/rules.d/70-alsa-permanent.rules
echo 'ATTRS{idVendor}=="1b3f", ATTRS{idProduct}=="2008", ATTR{id}="VOICE"' | sudo tee -a  /etc/udev/rules.d/70-alsa-permanent.rules
```
My usb sound is the Generalplus Technology Inc. so 1b3f:2008 is used, just unplug and run lsusb once more to see if it dissapears if unsure.
Now when you reboot we should have a loopback device and renamed 'VOICE' soundcard.


