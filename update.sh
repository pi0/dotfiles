#!/bin/bash
base = /usr/share/dotfiles

pushd $base
git pull origin master
popd
upgrade_oh_my_zsh
$base/install.sh
