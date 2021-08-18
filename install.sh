#!/usr/bin/env bash

if [ ! -d "$HOME/utils" ]; then
    mkdir "$HOME/utils"
fi

cd "$HOME/utils" || return

# Download the adminer docker
git clone git@github.com:katharinegillis/docker-adminer.git adminer

# Start up adminer
cd "$HOME/utils/adminer" || return
docker-compose up -d
