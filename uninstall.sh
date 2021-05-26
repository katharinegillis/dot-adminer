#!/usr/bin/env bash

# Remove the adminer docker
cd $HOME/utils/adminer || exit 1
docker-compose down
cd $HOME || exit 1
rm -rf $HOME/utils/adminer