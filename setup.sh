#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip -qqj rclone-current-linux-amd64.zip
rm -rf rclone-current-linux-amd64.zip
export PATH=$PWD/:$PATH

apt-get --quiet --quiet --yes --print-uris install aria2c| cut --delimiter ' ' --fields 1 | xargs wget
