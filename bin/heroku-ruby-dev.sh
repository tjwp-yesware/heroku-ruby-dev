#!/bin/bash

exec 2>&1
set -e
set -x

apt-get update

# Install dependencies for capybara-webkit
apt-get install -y --force-yes \
    build-essential \
    libqt4-webkit \
    libqt4-dev \
    xvfb

# Cleanup
rm -rf /var/cache/apt/archives/*.deb
rm -rf /var/lib/apt/lists/*

echo -e "\nSuccess!"
exit 0
