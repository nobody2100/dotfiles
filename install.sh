echo "This install script will modify the following configuration files in your home directory:\n\t.bashrc\n\t.bash_profile\n\t.emacs\n\t.screenrc"

# bashrc
mv ~/.bashrc ~/.bashrc_bak
echo ". ~/bin/dotfiles/bashrc" > ~/.bashrc

# bash_profile: the same as bashrc
mv ~/.bash_profile ~/.bash_profile_bak
echo -e "if [ -f ~/.bashrc ];\nthen\n\tsource ~/.bashrc\nfi" > ~/.bashrc

# emacs
mv ~/.emacs ~/.emacs_bak
ln -s ~/bin/dotfiles/emacs ~/.emacs

# ssh config
mv ~/.emacs ~/.emacs_bak
ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

# screenrc
mv ~/.screenrc ~/.screenrc_bak
ln -s ~/bin/dotfiles/screenrc ~/.screenrc