git clone https://github.com/voice-engine/ec.git
cd ec
make

cd ..

git clone https://github.com/voice-engine/alsa_plugin_fifo.git
cd alsa_plugin_fifo
make && sudo make install

cd ..
