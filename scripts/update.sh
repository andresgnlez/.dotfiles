#!/bin/bash

# Brew formulae
echo '[INFO] Updating brew formulae...'

brew update # updates formulae and Homebrew
brew outdated --verbose # shows detailed version information of outdated installed formulae after updating them
brew upgrade # upgrades once formulae are updated
brew cleanup # removes old versions of a formulae
brew doctor # checks if everything is OK

echo '[INFO] Looking for system updates...'

# System updates (restarts if required)
sudo softwareupdate --list --all --install --restart

echo '[INFO] Done with system updates.'

echo '[INFO] You are up to date! 🎉🎉'
