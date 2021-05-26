#!/usr/bin/env bash

[ ! -d "$HOME/utils" ] && mkdir $HOME/utils
cd $HOME/utils || echo "no utils folder"

# Download the adminer docker
git clone git@github.com:katharinegillis/docker-adminer.git adminer

# Start up adminer
cd $HOME/utils/adminer || "no utils/adminer folder"
docker-compose up -d
