# Build Base
ARG BASE_IMAGE
FROM ${BASE_IMAGE} as base

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Madrid \
    PYTHONUNBUFFERED=1 \
    SHELL=/bin/bash

# Install Ubuntu packages
COPY --chmod=755 packages/* ./
RUN /packages.sh && rm /packages.sh

# Set Python
RUN ln -s /usr/bin/python3.10 /usr/bin/python

ARG URL
ARG TORCH_VER
ARG XFORMERS_VER

# Install Torch and xformers
RUN pip3 install --no-cache-dir ${TORCH_VER} --index-url ${URL} && \
    pip3 install --no-cache-dir xformers==${XFORMERS_VER} --index-url ${URL} && \
    pip cache purge

# Remove existing SSH host keys
RUN rm -f /etc/ssh/ssh_host_*

WORKDIR /workspace

# Start the container
SHELL ["/bin/bash", "--login", "-c"]