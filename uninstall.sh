#!/usr/bin/env bash

# Remove the adminer docker
cd $HOME/utils/adminer || return
docker-compose down
cd $HOME || return
rm -rf $HOME/utils/adminer