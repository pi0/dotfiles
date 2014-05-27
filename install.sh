#!/bin/bash

base=/usr/share/dotfiles

rm -rv ~/.aria2
rm -rv ~/.vim

touch ~/.z

if [ ! -d "$base/.oh-my-zsh" ] ; then
        echo "Installing oh-my-zsh..." ;
        git clone git://github.com/robbyrussell/oh-my-zsh.git $base/.oh-my-zsh ;
fi

for f in $base/.* ; do
	echo "Installing $f..."
	ln -sf $base/$f ~/$f
done
unlink ~/.git

chsh -s /bin/zsh
