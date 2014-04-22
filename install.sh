#!/bin/bash

rm -rv ~/.aria2
rm -rv ~/.vim

touch ~/.z

pushd ~/.dotfiles

if [ ! -d "~/.oh-my-zsh" ] ; then
        echo "Installing oh-my-zsh..." ;
        git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh ;
fi

for f in .* ; do
	echo "Installing $f..."
	ln -sf ~/.dotfiles/$f ~/$f
done

popd

