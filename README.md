Yet another dotfiles project !
===========

My Unix config files!

## how to install
    sudo if [ ! -d "$base/.oh-my-zsh" ] ; then
            git clone https://github.com/pi0/dotfiles.git /usr/share/dotfiles ;
        else
            git --git-dir=/usr/share/dotfiles pull;
        fi
    /usr/share/dotfiles/install.sh
