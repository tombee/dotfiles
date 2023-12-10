#!/bin/bash

brew tap homebrew/cask-fonts

brew install \
	alacritty \
	docker \
	fd \
	font-monaspace \
	git \
	koekeishiya/formulae/yabai \
	koekeishiya/formulae/skhd \
	lazygit \
	neovim \
	ripgrep \
	tmux \
	visual-studio-code \
	wget \
	zsh

chsh -s /bin/zsh

ln -snf ~/.dotfiles/zshrc ~/.zshrc

mkdir -p ~/.config
for configdir in ~/.dotfiles/config/*; do
	ln -snf $configdir ~/.config/$(basename "$configdir")
done

for shellfile in ~/.dotfiles/shell/*; do
	ln -snf $shellfile ~/.$(basename "$shellfile")
done

defaults write -g AppleFontSmoothing -int 0

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
