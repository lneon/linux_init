#!/bin/bash
echo ">> start.sh START!"

echo ">> copy vimrc, ycm_extra_conf.py"
cp ./.vimrc ~/.vimrc
cp .ycm_extra_conf.py ~/.vim/

echo ">> git clone Vundle.vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo ">> download color theme"
ls /usr/share/vim/
echo "   Type Vim Version: "
read VERSION

# vim 버전 업데이트할것!
cd /usr/share/vim/vim$VERSION/colors/
sudo wget -O molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim

echo ">> add .bashrc config"
echo "export TERM=xterm-256color" >> ~/.bashrc

echo ">> install c++ code highlight"
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git /tmp/vim-cpp-enhanced-highlight
mkdir -p ~/.vim/after/syntax/
mv /tmp/vim-cpp-enhanced-highlight/after/syntax/cpp.vim ~/.vim/after/syntax/cpp.vim
rm -rf /tmp/vim-cpp-enhanced-highlight

echo ">> install tags"
sudo apt-get install ctags

echo ">> install GNU Global"
sudo apt-get install global
sudo apt install cpp cmake python3-dev
cd ~/.vim/bundle/youcompleteme/
./install.py --clang-completer

echo ">> start.sh FINISH!"

echo ">> Please type vim command :PluginInstall"
