#!/usr/bin/env bash

[ ! -d "$HOME/utils" ] && mkdir $HOME/utils

cd $HOME/utils/adminer || exit 1
docker-compose down
git pull origin master
docker-compose pull
docker-compose up -d