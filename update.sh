#!/usr/bin/env bash

if [ ! -d "$HOME/utils" ]; then
    mkdir "$HOME/utils"
fi

cd "$HOME/utils/adminer" || return
docker-compose down
git pull origin master
docker-compose pull
docker-compose up -d