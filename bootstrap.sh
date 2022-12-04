#!/bin/bash

###################################################
# eddiebquinn/dotfiles - System boot strap script #
###################################################
# This script is designed to install all my       #
# system config onto a new computer. It will      #
# instal dotfiles, aswell as a list of packages.  #
###################################################


# If not already set, specify dotfiles destination and source repo
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.config/dotfiles}"
DOTFILES_REPO="${DOTFILES_REPO:-https://github.com/eddiebquinn/dotfiles.git}"

# Print starting message
echo -e "\033[1;36m""eddiebquinn/Dotfiles Installation Script\033[0m
This script will install or update specified dotfiles:
- From \033[4;36m${DOTFILES_REPO}\033[0m
- Into \033[4;36m${DOTFILES_DIR}\033[0m
Be sure you've read and understood the what will be applied.\n"

# If dependencies not met, install them
if ! hash git 2> /dev/null; then
    bash <(curl -s -L 'https://raw.githubusercontent.com/eddiebquinn/dotfiles/HEAD/scripts/prerequisites.sh')>
fi

# If dotfiles not yet present then clone
if [[ ! -d "$DOTFILES_DIR" ]]; then
  mkdir -p "${DOTFILES_DIR}" && \
  git clone --recursive ${DOTFILES_REPO} ${DOTFILES_DIR}
fi

# Execute setup or update script
cd "${DOTFILES_DIR}" && \
chmod +x ./install.sh && \
./install.sh --no-clear