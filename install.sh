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

pushd $base
for f in .* ; do
	echo "Installing $f..."
	ln -sf $base/$f $HOME/$f
done
popd
unlink $HOME/.git

#chsh -s /bin/zsh

echo "Done! :)"
