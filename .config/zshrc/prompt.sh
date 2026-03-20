# Update the prompt's look to show '[USERNAME@HOST CWD]$ '
if [[ $EUID -eq 0 ]]; then
  USER_HOST_COLOUR="red"
  PROMPT_SYMBOL="#"
else
  USER_HOST_COLOUR="118"
  PROMPT_SYMBOL="$"
fi

setopt PROMPT_SUBST
#PS1="[%n@%m %~]$PROMPT_SYMBOL "
PS1="%B%F{$USER_HOST_COLOUR}%n@%U%m%u%f%b:%F{cyan}%~%f$PROMPT_SYMBOL "
