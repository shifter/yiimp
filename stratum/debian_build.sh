#!/bin/bash
echo "Run as root";
echo "Tested on Debian Stretch"
apt-get -y update
apt-get -y install git-core build-essential libgmp-dev default-libmysqlclient-dev default-libmysqlclient-dev libcurl4-openssl-dev pkg-config \
librtmp-dev libldap-dev libssl-dev libkrb5-dev libcrypto++-dev libpsl-dev libssh2-1-dev libnghttp2-dev libidn2.0-dev
cd iniparser; make; cd ..;
make;

