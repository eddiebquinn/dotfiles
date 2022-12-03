typeset -U PATH path

# XDG SETUP

## XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

## Cleanup
export ZDOTDIR="$HOME"/.config/zsh
export VIMINIT="set nocp | source ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export PYTHONSTARTUP="${XDG_CONFIG_HOME}"/python/pythonrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
