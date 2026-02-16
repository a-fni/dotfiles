#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Loading all configuration files
BASHRC_CONFIG_PATH="$HOME/.config/bashrc"
if [ -d "$BASHRC_CONFIG_PATH" ]; then
    for file in "$BASHRC_CONFIG_PATH"/*; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
    done
fi

