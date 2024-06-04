#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Madrid \
    PYTHONUNBUFFERED=1 \
    SHELL=/bin/bash

apt update
apt -y upgrade
apt install -y --no-install-recommends \
apt-transport-https \
apt-utils \
aria2 \
bc \
build-essential \
ca-certificates \
curl \
git \
git-lfs \
gnupg2 \
htop \
libcairo2-dev \
libgl1 \
libglib2.0-0 \
libgoogle-perftools4 \
libsm6 \
libtcmalloc-minimal4 \
libxext6 \
libxrender1 \
locales \
mc \
nano \
nginx \
nvtop \
openssh-server \
pkg-config \
plocate \
procps \
psmisc \
python-is-python3 \
python3-pip \
python3-tk \
python3.10 \
python3.10-dev \
python3.10-venv \
rsync \
software-properties-common \
tar \
wget
update-ca-certificates
apt clean
rm -rf /var/lib/apt/lists/*
echo "es_ES.UTF-8 UTF-8" > /etc/locale.gen