#!/bin/bash

# System updates (restarts if required)
sudo softwareupdate --install --all --restart

# Brew formulas
brew update
brew outdated
brew upgrade
brew cleanup -n
brew prune
brew doctor

# Brew casks
brew cask upgrade
