#!/bin/bash

cp -R $PWD/.vim $HOME

if [ -f $HOME/.vimrc ]; then
	rm $HOME/.vimrc
fi
ln -s $PWD/.vimrc $HOME/.vimrc

if [ -f $HOME/.bashrc ]; then
	rm $HOME/.bashrc
fi
ln -s $PWD/.bashrc $HOME/.bashrc

if [ -f $HOME/.bash_profile ]; then
	rm $HOME/.bash_profile
fi
ln -s $PWD/.bash_profile $HOME/.bash_profile

if [ -f $HOME/.tmux.conf ]; then
	rm $HOME/.tmux.conf
fi
ln -s $PWD/.tmux.conf $HOME/.tmux.conf

