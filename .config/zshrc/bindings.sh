# Move word-by-word when pressing Ctrl + Left/Right
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Deletion key not working in zsh
bindkey '^[[3~' delete-char

# Fixing the Home and End keys not working in zsh
# Fix Home key to go to the beginning of the line
bindkey '^[[H' beginning-of-line
bindkey '^[OH' beginning-of-line
bindkey '^[[1~' beginning-of-line

# Fix End key to go to the end of the line
bindkey '^[[F' end-of-line
bindkey '^[OF' end-of-line
bindkey '^[[4~' end-of-line

