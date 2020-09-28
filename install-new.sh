#!/bin/bash

apt-get update
xargs -a apt-packages.txt sudo apt-get install -y
xargs -a snap-packages.txt sudo snap install