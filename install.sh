#!/usr/bin/env bash

[ ! -d "$HOME/utils" ] && mkdir $HOME/utils
cd $HOME/utils || exit 1

# Download the adminer docker
git clone git@github.com:katharinegillis/docker-adminer.git adminer

# Start up adminer
cd $HOME/utils/adminer || exit 1
docker-compose up -d