#!/usr/bin/env bash

[ ! -d "$HOME/utils" ] && mkdir $HOME/utils
cd $HOME/utils

if ls $HOME/utils/adminer 1> /dev/null 2>&1; then
    cd $HOME/utils/adminer
    docker-compose down
    git pull origin master
    docker-compose pull
    docker-compose up -d
else
    cd $HOME/utils

    # Download the adminer docker
    git clone git@github.com:katharinegillis/docker-adminer.git adminer

    # Start up adminer
    cd $HOME/utils/adminer
    docker-compose up -d
fi