#!/bin/bash

# System updates
sudo softwareupdate -lia 

# Brew formulas
brew update
brew outdated
brew upgrade
brew cleanup -n
brew prune
brew doctor

# Brew casks
brew cask upgrade