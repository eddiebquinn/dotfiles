autoload -Uz compinit

zsh_dir=${${ZDOTDIR}:-$HOME/.config/zsh}
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# Import alias files
source ${zsh_dir}/aliases/general.zsh
source ${zsh_dir}/aliases/git.zsh
source ${zsh_dir}/aliases/pentest.zsh
source ${zsh_dir}/aliases/remote.zsh

# PROMPT
NEWLINE=$'\n' 
PROMPT="%B%F{6}[%f%b%F{2}%n%f%F{6}@%f%F{2}%m%f%B%F{6}] - [%f%b%F{red}%~%f%B%F{6}]%f%b%B%F{cyan}ᛃ%f%b "

# COSEMTIC CHANGES
echo
neofetch
