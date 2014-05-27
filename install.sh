#!/bin/bash

base=/usr/share/dotfiles

rm -rv $HOME/.aria2
rm -rv  $HOME/.vim
touch  $HOME/.z

for f in $base/.* 
do
	echo "Installing $(basename $f)..."
	ln -sf $f $HOME
done
unlink $HOME/.git

#chsh -s /bin/zsh

echo "Done! :)"
