#!/bin/bash

# System updates (restarts if required)
sudo softwareupdate --list --all --install --restart

# Brew formulas
brew update # updates formulaes and Homebrew
brew outdated # shows outdated installed formulas after updating them
brew upgrade # Upgrades once formulaes are updated
# removes old versions of a formulae
brew cleanup
brew prune # removes old symlinks
brew doctor # checks if everything is OK

# Brew casks
brew cask upgrade # updates apps installed through cask
