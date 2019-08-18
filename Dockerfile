#
# Ubuntu Bionic Image
# with NodeJS, Python, Docker
# and Ansible
# 
# https://github.com/mapic/ansible-docker
# 

# Base Image
FROM ubuntu:bionic

# Install Node.js
RUN apt-get update
RUN apt-get install -y curl sudo fish wget htop
RUN sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install --yes build-essential

# Install Python
RUN sudo apt-get update
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository ppa:deadsnakes/ppa
RUN sudo apt-get install -y python3.7

# Install Ansible
RUN sudo apt-add-repository -y --update ppa:ansible/ansible
RUN sudo apt-get update
RUN sudo apt-get install -y ansible

# Print version
RUN python --version
RUN python3 --version
RUN node --version
RUN ansible --version
