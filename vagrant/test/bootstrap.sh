#!/usr/bin/env bash

apt-get -y update && apt -y upgrade && apt -y autoremove
apt-get install -y python cmake default-jre git-core autotools-dev automake wget unzip
mkdir -p /opt/apps
git clone https://github.com/dcassiero/emsdk.git /opt/apps/emsdk
# /opt/apps/emsdk/emsdk install 1.38.43-fastcomp && /opt/apps/emsdk/emsdk activate 1.38.43-fastcomp && source /opt/apps/emsdk/emsdk_env.sh && emcc -v
#  /opt/apps/emsdk/emsdk install latest && /opt/apps/emsdk/emsdk activate latest && source /opt/apps/emsdk/emsdk_env.sh && emcc -v
git clone https://github.com/dcassiero/em-dosbox.git /opt/apps/em-dosbox
# /opt/apps/em-dosbox/autogen.sh && emconfigure /opt/apps/em-dosbox/configure --enable-wasm --disable-sync && make -f /opt/apps/em-dosbox/Makefile
#git clone https://github.com/dreamlayers/em-dosbox.git /opt/apps/em-dosbox
# wget https://image.dosgamesarchive.com/games/blocks.zip -P /opt/apps/em-dosbox/src
wget https://devopsny.com/blog/em_dosbox/doom.zip -P /opt/apps/em-dosbox/src
chown -R vagrant:vagrant /opt/apps
