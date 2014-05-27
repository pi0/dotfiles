#!/bin/bash

base=/usr/share/dotfiles

if [ ! -d $base ] ; then
        sudo -E git clone https://github.com/pi0/dotfiles.git $base ;
    else
        sudo -E git --git-dir=$base/.git pull;
    fi

rm -rv $HOME/.aria2
rm -rv  $HOME/.vim
touch  $HOME/.z

for f in $base/.* ; do
	$name=`basename $f`
	echo "Installing $name..."
	ln -sf $f $HOME/$name
done
unlink $HOME/.git

#chsh -s /bin/zsh

echo "Done! :)"
