#!/bin/bash

# System updates (restarts if required)
sudo softwareupdate --install --all --restart

# Brew formulas
brew update # updates formulaes and Homebrew
brew outdated # shows outdated installed formulas after updating them
brew upgrade # Upgrades once formulaes are updated
# removes old versions of a formulae
# modificator shows what will be cleaned up
brew cleanup -n
brew prune # removes old symlinks
brew doctor # checks if everything is OK

# Brew casks
brew cask upgrade # updates apps installed through cask
