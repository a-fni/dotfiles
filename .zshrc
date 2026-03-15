#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Loading all configuration files
ZSHRC_CONFIG_PATH="$HOME/.config/zshrc"
if [ -d "$ZSHRC_CONFIG_PATH" ]; then
    for file in "$ZSHRC_CONFIG_PATH"/*; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
    done
fi   

