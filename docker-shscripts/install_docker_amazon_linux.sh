#!/bin/bash

# Update package database
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user to the docker group to run Docker commands without sudo
sudo usermod -a -G docker ec2-user

# Verify installation
docker --version
