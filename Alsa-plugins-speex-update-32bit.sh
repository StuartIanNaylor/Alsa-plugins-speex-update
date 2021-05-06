sudo apt-get -y update

sudo apt-get -y install libasound2 libasound2-dev libasound2-plugins libfftw3-3 libfftw3-dev libspeex1 libspeexdsp1 libspeex-dev libspeexdsp-dev speex git autotools-dev autoconf libtool pkg-config

git clone https://gitlab.xiph.org/xiph/speexdsp.git
cd speexdsp
./autogen.sh
./configure --libdir=/usr/lib/arm-linux-gnueabihf
make
sudo make install

cd ..

git clone https://gitlab.xiph.org/xiph/speex
cd speex
./autogen.sh
./configure --libdir=/usr/lib/arm-linux-gnueabihf
make
sudo make install

cd ..

wget ftp://ftp.alsa-project.org/pub/plugins/alsa-plugins-1.1.8.tar.bz2
tar -xvf alsa-plugins-1.1.8.tar.bz2
cd alsa-plugins-1.1.8
./configure --libdir=/usr/lib/arm-linux-gnueabihf
make 
sudo make install

cd ..
