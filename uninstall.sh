#!/usr/bin/env bash

# Remove the adminer docker
cd $HOME/utils/adminer
dc down
cd $HOME
rm -rf $HOME/utils/adminer