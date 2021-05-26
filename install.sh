#!/usr/bin/env bash

[ ! -d "$HOME/utils" ] && mkdir $HOME/utils
cd $HOME/utils || return

# Download the adminer docker
git clone git@github.com:katharinegillis/docker-adminer.git adminer

# Start up adminer
cd $HOME/utils/adminer || return
docker-compose up -d
