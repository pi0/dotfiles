#!/bin/bash

base=/usr/share/dotfiles

rm -rv ~/.aria2
rm -rv ~/.vim

touch ~/.z

for f in $base/.* ; do
	echo "Installing $f..."
	ln -sf $base/$f ~/$f
done
unlink ~/.git

chsh -s /bin/zsh
