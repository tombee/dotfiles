#!/bin/bash

brew tap homebrew/cask-fonts

brew install \
	alacritty \
	bat \
	discord \
	fd \
	fzf \
	git \
	gnu-sed \
	google-drive \
	jq \
	lazygit \
	neovim \
	npm \
	obsidian \
	pyenv \
	pyenv-virtualenv \
	ripgrep \
	steam \
	tldr \
	tmux \
	spotify \
	stats \
	wget \
	zsh

npm install -g \
	typescript \
	neovim \
	aws-cdk

chsh -s /bin/zsh

ln -snf ~/.dotfiles/zshrc ~/.zshrc

mkdir -p ~/.config

dir=$(pwd)
for configdir in ${dir}/config/*; do
	ln -snf $configdir ~/.config/$(basename "$configdir")
done

for shellfile in ${dir}/shell/*; do
	ln -snf $shellfile ~/.$(basename "$shellfile")
done

defaults write -g AppleFontSmoothing -int 0
