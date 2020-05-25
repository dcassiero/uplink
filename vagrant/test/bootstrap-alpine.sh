#!/usr/bin/env bash

echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" | tee -a /etc/apk/repositories
echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" | tee -a /etc/apk/repositories

apk update && apk upgrade && apk add git emscripten-fastcomp emscripten emscripten-optimizer emscripten-libs-asmjs emscripten-libs-wasm make autoconf autoconf-archive automake darkhttpd git glib-dev glib markdown


mkdir -p /opt/apps
git clone https://github.com/dcassiero/emsdk.git /opt/apps/emsdk
# /opt/apps/emsdk/emsdk install 1.38.43-fastcomp && /opt/apps/emsdk/emsdk activate 1.38.43-fastcomp && source /opt/apps/emsdk/emsdk_env.sh && emcc -v
#  /opt/apps/emsdk/emsdk install latest && /opt/apps/emsdk/emsdk activate latest && source /opt/apps/emsdk/emsdk_env.sh && emcc -v
git clone https://github.com/dcassiero/em-dosbox.git /opt/apps/em-dosbox
# /opt/apps/em-dosbox/autogen.sh && emconfigure /opt/apps/em-dosbox/configure --enable-wasm --disable-sync && make -f /opt/apps/em-dosbox/Makefile
git clone https://github.com/dcassiero/em.git /opt/apps/em
wget https://devopsny.com/blog/em_dosbox/doom.zip -P /opt/apps/em-dosbox/src
chown -R vagrant:vagrant /opt/apps
