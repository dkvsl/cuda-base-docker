#!/usr/bin/env bash
apt update && apt install -y --no-install-recommends \
    build-essential \
    wget \
    software-properties-common \
    bash \
    bzip2 \
    git \
    git-lfs \
    python3.10-venv \
    python3-pip \
    python3-tk \
    python3-dev \
    ncdu \
    openssh-server \
    libglib2.0-0 \
    libsm6 \
    libgl1 \
    nginx \
    libxrender1 \
    libxext6 \
    apt-utils \
    curl \
    nano \
    mc \
    npm \
    procps \
    zip \
    unzip \
    p7zip-full \
    psmisc \
    subversion \
    htop \
    rsync \
    nvtop \
    screen \
    bc \
    aria2 \
    cron \
    pkg-config \
    plocate \
    libcairo2-dev \
    libstdc++-12-dev \
    libgoogle-perftools4 \
    libtcmalloc-minimal4 \
    apt-transport-https \
    ca-certificates
update-ca-certificates
apt clean
rm -rf /var/lib/apt/lists/*
echo "es_ES.UTF-8 UTF-8" > /etc/locale.gen

# Install JupyterLab
pip install -U --no-cache-dir jupyterlab \
    jupyterlab_widgets \
    ipykernel \
    ipywidgets