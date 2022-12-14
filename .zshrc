source ~/.zsh/nvm.zsh
source ~/.zsh/rvm.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh

LOCAL_OVERRIDES=~/.zshrc.local

if [[ -f "$LOCAL_OVERRIDES" ]]; then
  source "$LOCAL_OVERRIDES"
fi
