#!/usr/bin/env fish
# Setup editor
set -Ux EDITOR vim
set -Ux VISUAL $EDITOR

# Default for dotfiles and projects
set -Ux DOTFILES ~/.dotfiles
set -Ux PROJECTS ~/Projects

# Expose bins
fish_add_path -U $DOTFILES/bin $HOME/.bin

# Include all functions one level deep
for f in $DOTFILES/*/functions
	set -Up fish_function_path $f
end


for f in $DOTFILES/*/conf.d/*.fish
	ln -sf $f ~/.config/fish/conf.d/(basename $f)
end

if test -f ~/.localrc.fish
	ln -sf ~/.localrc.fish ~/.config/fish/conf.d/localrc.fish
end
