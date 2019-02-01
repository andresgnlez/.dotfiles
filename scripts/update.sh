#!/bin/bash

echo '[INFO] Looking for system updates...'

# System updates (restarts if required)
sudo softwareupdate --list --all --install --restart

echo '[INFO] Done wiht system updates.'

echo '[INFO] Updating brew formulaes...'

# Brew formulas
brew update # updates formulaes and Homebrew
brew outdated # shows outdated installed formulas after updating them
brew upgrade # upgrades once formulaes are updated
brew cleanup # removes old versions of a formulae
brew doctor # checks if everything is OK

echo '[INFO] You are up to date! 🎉🎉'
