mv ~/.bashrc ~/.bashrc_bak
echo ". ~/bin/dotfiles/bashrc" > ~/.bashrc
mv ~/.bash_profile ~/.bash_profile_bak
echo -e "if [ -f ~/.bashrc ];\nthen\n\tsource ~/.bashrc\nfi" > ~/.bashrc
ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config
ln -s ~/bin/dotfiles/screenrc ~/.screenrc