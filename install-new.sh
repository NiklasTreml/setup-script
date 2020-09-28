#!/bin/bash

apt-get update
xargs -a apt-packages.txt sudo apt-get install -Y
xargs -a snap-packages.txt sudo snap install -Y