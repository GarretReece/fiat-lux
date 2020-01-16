#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f ~/.bash_profile ]; then
	echo "[+] linking in bash_profile"
	ln -s $DIR/bash_profile ~/.bash_profile
else
	echo "[!] existing bash_profile discovered, doing nothing"
fi

if [ ! -d ~/.vim ]; then
	echo "[+] cloning vim setup into ~/.vim"
	git clone git@github.com:GarretReece/vimsetup.git ~/.vim
	cd ~/.vim
	git submodule init
	git submodule update
	cd -
	echo "[+] running ~/.vim/setup"
	~/.vim/setup.sh
else
	echo "[!] existing ~/.vim directory discovered, doing nothing"
fi
