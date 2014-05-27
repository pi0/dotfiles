#!/bin/bash

base=/usr/share/dotfiles

if [ ! -d $base ] ; then
        sudo -E git clone https://github.com/pi0/dotfiles.git $base ;
    else
        sudo -E git --git-dir=$base/.git pull;
    fi

rm -rv ~/.aria2
rm -rv ~/.vim
touch ~/.z

for f in $base/.* ; do
	echo "Installing $f..."
	ln -sf $base/$f $HOME/$f
done
unlink $HOME/.git

#chsh -s /bin/zsh

echo "Done! :)"
