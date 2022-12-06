# General non-application specific aliases

command_exists () {
  hash "$1" 2> /dev/null
}

alias_not_used () {
  ! alias "$1" >/dev/null && ! hash "$1" 2> /dev/null
}

# Single-letter aliases - Only use if not already set
if alias_not_used c; then; alias c='clear'; fi
if alias_not_used e; then; alias e='exit'; fi
if alias_not_used g; then; alias g='grep'; fi
if alias_not_used l; then; alias l='ls'; fi
if alias_not_used m; then; alias m='man'; fi
if alias_not_used p; then; alias p='pwd'; fi
if alias_not_used s; then; alias s='sudo'; fi
if alias_not_used v; then; alias v='vim'; fi

# File listing aliases
alias la='ls -a'							# Lists all files incl hidden
alias ll='ls -la'							# Lists files with details
alias ln='ls -la |wc -l'						# Shows number of files incl hidden


# Traverse dirs
alias c~='cd ~'
alias c.='cd ..'
alias c..='cd ../../'
alias c...='cd ../../../'
alias c....='cd ../../../../'
alias c.....='cd ../../../../'
alias cg='cd `git rev-parse --show-toplevel`'			 	# Base of git project

# Find + manage aliases
alias al='alias | less'							# List all aliases
alias as='alias | grep'							# Search aliases
alias ar='unalias'							# Remove given alias

# System Monitoring
alias meminfo='free -m -l -t'						# Show free and used memory
alias memhog='ps -eo pid,ppid,cmd,%mem --sort=-%mem | head' 		# Processes consuming most mem
alias cpuhog='ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head' 		# Processes consuming most cpu
alias cpuinfo='lscpu' 							# Show CPU Info
alias distro='cat /etc/*-release' 					# Show OS infoi

# Utils
alias myip='curl icanhazip.com'
alias weather='curl wttr.in'
alias weather-short='curl "wttr.in?format=3"'
alias tinyurl='curl -s "http://tinyurl.com/api-create.php?url='
alias ports='netstat -tulanp'
alias dotfiles="${DOTFILES_DIR:-$HOME/Documents/.dotfiles}/install.sh"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Top KEK
alias cls='clear;ls'							 # Clear and ls
alias plz="fc -l -1 | cut -d' ' -f2- | xargs sudo"			 # Re-run last cmd as root
alias yolo='git add .; git commit -m "Blind commit"; git push origin master'
alias whereami='pwd'
alias dog='cat'
alias gtfo='exit'
