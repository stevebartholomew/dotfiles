source ~/.zsh/rvm.zsh
source ~/.zsh/asdf.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh

export EDITOR='mvim -f'

LOCAL_OVERRIDES=~/.zshrc.local

if [[ -f "$LOCAL_OVERRIDES" ]]; then
  source "$LOCAL_OVERRIDES"
fi
