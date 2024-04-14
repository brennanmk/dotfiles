#!/bin/bash

DOTFILES=(
    ".config/alacritty"
    ".config/doom"
    ".config/i3"
    ".config/polybar"
    ".config/regolith3"
    ".config/rofi"
    ".config/background.jpg"
    ".zshrc"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${PWD}/${dotfile}" "${HOME}/${dotfile}"
done