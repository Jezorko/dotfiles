#!/usr/bin/env bash

echo "DO NOT USE UNLESS YOU KNOW WHAT YOU ARE DOING"
exit 1

FLAVOR="home"
SETUP_DIRECTORY="${HOME}"
DOTFILES_DIRECTORY="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

DOTFILES_CONFIGS_DIRECTORY="${DOTFILES_DIRECTORY}/.config/${FLAVOR}"
SETUP_CONFIGS_DIRECTORY="${SETUP_DIRECTORY}/.config"

echo 'Linking config files…'
ln -s "${DOTFILES_CONFIGS_DIRECTORY}/i3" "${SETUP_CONFIGS_DIRECTORY}/i3"
ln -s "${DOTFILES_CONFIGS_DIRECTORY}/fish" "${SETUP_CONFIGS_DIRECTORY}/fish"
ln -s "${DOTFILES_CONFIGS_DIRECTORY}/polybar" "${SETUP_CONFIGS_DIRECTORY}/polybar"
ln -s "${DOTFILES_CONFIGS_DIRECTORY}/picom" "${SETUP_CONFIGS_DIRECTORY}/picom"

echo 'Linking screen layouts…'
ln -s "${DOTFILES_CONFIGS_DIRECTORY}/screenlayout" "${SETUP_DIRECTORY}/.screenlayout"

echo 'Copying .Xresources'
cp "${DOTFILES_DIRECTORY}/.Xresources" "${SETUP_DIRECTORY}/.Xresources"

echo 'Configuring .profile'
echo "export PATH=\"\${PATH}:${DOTFILES_DIRECTORY}/PATH\"" >> "${SETUP_DIRECTORY}/.profile"
echo 'redshift -O 3300 &' >> "${SETUP_DIRECTORY}/.profile"
echo 'configure_touchpad &' >> "${SETUP_DIRECTORY}/.profile"
echo 'nitrogen --restore &' >> "${SETUP_DIRECTORY}/.profile"

echo 'Setting up keyboard layout'
setxkbmap pl
