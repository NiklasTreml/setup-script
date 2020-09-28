#!/bin/bash

apt-get update
xargs -a packages.txt sudo apt-get install
#cat snap-packages.txt | xargs sudo snap install