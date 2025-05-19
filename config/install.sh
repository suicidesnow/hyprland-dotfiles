#!/bin/sh

# Path to your dotfiles.
export DOTFILES=$HOME/.hyprland-dotfiles

echo "Setting up your system..."
echo "Your dotfiles path: $DOTFILES"

mkdir -p $HOME/.config

# Relink other software configs

# btop
rm -rf $Home/.config/btop
ln -s $DOTFILES/btop $HOME/.config/btop

# fish
rm -rf $HOME/.config/fish
ln -s $DOTFILES/fish $HOME/.config/fish

#hypr
rm -rf $HOME/.config/hypr
ln -s $DOTFILES/ghostty $HOME/.config/hypr

#kate
rm -rf $HOME/.config/kate
ln -s $DOTFILES/ghostty $HOME/.config/kate

#kitty
rm -rf $HOME/.config/kitty
ln -s $DOTFILES/ghostty $HOME/.config/kitty

#MangoHud
rm -rf $HOME/.config/MangoHud
ln -s $DOTFILES/ghostty $HOME/.config/MangoHud

#nautilus
rm -rf $HOME/.config/nautilus
ln -s $DOTFILES/ghostty $HOME/.config/nautilus

#waybar
rm -rf $HOME/.config/waybar
ln -s $DOTFILES/ghostty $HOME/.config/waybar

#wlogout
rm -rf $HOME/.config/wlogout
ln -s $DOTFILES/ghostty $HOME/.config/wlogout

# ghostty
rm -rf $HOME/.config/ghostty
ln -s $DOTFILES/ghostty $HOME/.config/ghostty

# neofetch
rm -rf $HOME/.config/neofetch
ln -s $DOTFILES/neofetch $HOME/.config/neofetch

# wofi
rm -rf $HOME/.config/wofi
ln -s $DOTFILES/wofi $HOME/.config/wofi

echo "Done! All set up, ready to be used!"
