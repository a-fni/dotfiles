# ls shortcuts
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -al'

# Grep output colouring
alias grep='grep --color=auto'

# Neofetch / fastfetch alias
alias neofetch='echo && fastfetch'

# .dotfiles git repository shortcut
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Start and stop docker aliases (both require sudo)
alias dockerstart='sudo systemctl start docker docker.socket'
alias dockerstatus='sudo systemctl status docker docker.socket'
alias dockerstop='sudo systemctl stop docker docker.socket'
alias dockerrun='sudo docker compose down && sudo docker compose build && sudo docker compose up'
