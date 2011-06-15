#!/bin/bash

##################################################
##
## little install script for my configs...
## (warning: will delete original files)
##
##################################################


echo -e "This install script will modify the following configuration files in your home directory:\n\t.bashrc\n\t.bash_profile\n\t.emacs\n\t.screenrc"

path=$(pwd)

echo "the path to the dotfiles is $path"

# bashrc
#mv ~/.bashrc ~/.bashrc_bak
echo ". $path/bashrc" > ~/.bashrc
# decided to make this not so flexible
#echo ". $path/bash/env" > bashrc
#echo ". $path/bash/aliases" >> bashrc
#echo ". $path/bash/config" >> bashrc

# bash_profile: the same as bashrc
#mv ~/.bash_profile ~/.bash_profile_bak
echo -e "if [ -f ~/.bashrc ];\nthen\n\tsource ~/.bashrc\nfi" > ~/.bash_profile

# emacs
#mv ~/.emacs ~/.emacs_bak
ln -sfv $path/emacs ~/.emacs

# ssh config
#mv ~/.emacs ~/.emacs_bak
ln -sfv $path/ssh/config ~/.ssh/config

# screenrc
#mv ~/.screenrc ~/.screenrc_bak
ln -sfv $path/screenrc ~/.screenrc


