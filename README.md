Yet another dotfiles project !
===========

My Unix config files!

## how to install

    base=/usr/share/dotfiles;
    if [ ! -d $base ] ; then
            sudo git clone https://github.com/pi0/dotfiles.git $base ;
        else
            sudo git --git-dir=$base pull;
        fi
    $base/install.sh
