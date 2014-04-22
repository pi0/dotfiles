#!/bin/bash
pushd ~/.dotfiles
git pull origin master
upgrade_oh_my_zsh
./install.sh
popd
