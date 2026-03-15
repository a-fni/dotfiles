# Update the prompt's look to show '[USERNAME@HOST CWD]$ '
if [[ $EUID -eq 0 ]]; then
    PROMPT_SYMBOL="#"
else
    PROMPT_SYMBOL="$"
fi

setopt PROMPT_SUBST
PS1="[%n@%m %~]$PROMPT_SYMBOL "

