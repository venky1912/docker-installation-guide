#!/bin/bash

# Download Docker Desktop for Mac
curl -Lo Docker.dmg https://desktop.docker.com/mac/stable/Docker.dmg

# Mount the DMG file
hdiutil attach Docker.dmg

# Copy Docker to Applications folder
cp -R /Volumes/Docker/Docker.app /Applications

# Unmount the DMG file
hdiutil detach /Volumes/Docker

# Start Docker
open /Applications/Docker.app

# Verify installation
docker --version
