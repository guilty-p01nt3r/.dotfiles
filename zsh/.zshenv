source "$HOME/.cargo/env"


## Exports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export DOTFILES=$HOME/.dotfiles
export EDITOR="nvim"
export VISUAL="nvim"

## Aliases
alias r=". ranger"
alias calc="python3"
alias vim="nvim"
alias vi="nvim"
alias luamake=/home/vince/.config/nvim/lua-language-server/3rd/luamake/luamake

# Bindings
bindkey -s ^f "tmux-sessionizer\n"

