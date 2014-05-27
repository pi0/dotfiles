Yet another dotfiles project !
===========

My Unix config files!

## how to install

    base=/usr/share/dotfiles;
    sudo if [ ! -d $base ] ; then
            git clone https://github.com/pi0/dotfiles.git $base ;
        else
            git --git-dir=$base pull;
        fi
    base/install.sh
