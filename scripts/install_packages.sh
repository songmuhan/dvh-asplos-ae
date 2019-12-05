#!/bin/bash
echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list
echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list
apt-get update
apt-get build-dep qemu
apt-get build-dep linux
apt-get -y install bridge-utils python-pip pbzip2 python-numpy
pip install 'pexpect==3.1' --force-reinstall
