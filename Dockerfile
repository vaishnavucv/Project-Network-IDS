FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update & install packages
RUN apt-get update && apt-get install -y \
    sudo \
    zsh \
    curl \
    wget \
    git \
    vim \
    nano \
    net-tools \
    && apt-get clean

# Create user with home directory
RUN useradd -m -s /usr/bin/zsh CR-HWV && \
    echo 'CR-HWV:cyberrangeisd' | chpasswd && \
    usermod -aG sudo CR-HWV

# Allow passwordless sudo
RUN echo 'CR-HWV ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Create working directory and set ownership
RUN mkdir -p /home/CR-HWV/workspace && \
    chown CR-HWV:CR-HWV /home/CR-HWV/workspace

# Set working directory
WORKDIR /home/CR-HWV/workspace

# Set user for subsequent commands
USER CR-HWV

# Set shell
SHELL ["/usr/bin/zsh", "-c"]

# Default command
CMD ["zsh"]
