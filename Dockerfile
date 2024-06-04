FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04 as base

# Install packages
COPY /apt.sh /
RUN chmod +x /apt.sh
RUN /apt.sh && rm /apt.sh

RUN pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 xformers==0.0.23.post1 --index-url https://download.pytorch.org/whl/cu118

# Clean system
RUN rm -f /etc/ssh/ssh_host_* &&\
    pip cache purge

# Start the container
SHELL ["/bin/bash", "--login", "-c"]