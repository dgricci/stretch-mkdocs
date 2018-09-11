#!/bin/bash

## Dockerfile for mkdocs environment

# Exit on any non-zero status.
trap 'exit' ERR
set -E

# install
export DEBIAN_FRONTEND=noninteractive
apt-get -qy update

pip install --upgrade pip
pip install mkdocs

# uninstall and clean
rm -rf /var/lib/apt/lists/*
rm -rf /usr/share/doc/*
rm -rf /usr/share/doc-gen/*
rm -fr /usr/share/man/*

exit 0

