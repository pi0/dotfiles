Yet another dotfiles project !
===========

My Unix config files!

## how to install

    base=/usr/share/dotfiles;
    if [ ! -d $base ] ; then
            sudo -E git clone https://github.com/pi0/dotfiles.git $base ;
        else
            sudo -E git --git-dir=$base/.git pull;
        fi
    $base/install.sh;
