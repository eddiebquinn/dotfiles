#!/usr/bin/env bash

################################################################
# Arch Linux, Pacman Package Install / Update Script        #
################################################################
# Installs listed packages on Arch-based systems via Pacman    #
# Also updates the cache database and existing applications    #
# Confirms apps arn't installed via different package manager  #
################################################################

# Apps to be installed via Pacman
pacman_apps=(
    # Essentials
    'wget'          # Download files
    'alacritty'     # My terminal of choice
    'firefox'       # Browser
    'ncspot'        # TUI spotify client

    # Desktop env
    'bspwm'         # Window manager
    'demenu'        # Application launcher
    'neofetch'      # Terminal fetch app
    'nitrogen'      # Wallpaper manager
    'polybar'       # Bar for windowmanager
    'sxhkd'         # Hot key deamon
    
    # Coding
    'code'          # IDE
    'python3'       # Python3 interpreter
    'nodejs'        # nodejs interpreter

    # Security
    'gnupg'         # PGP encryption, signing and verifying
    'keybase'       # Easy way to unify keys
)

# Colors
BLUE='\033[0;36m'
YELLOW='\033[0;93m'
CYAN_B='\033[1;96m'
RESET='\033[0m'

# When user is prompted for input, skip after x seconds
PROMPT_TIMEOUT=15

# If set to auto-yes - then don't wait for user reply
if [[ $* == *"--auto-yes"* ]]; then
  PROMPT_TIMEOUT=0
  REPLY='Y'
fi