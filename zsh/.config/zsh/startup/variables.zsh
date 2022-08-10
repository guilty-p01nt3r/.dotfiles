path+="$PATH:$ZSH_CUSTOM/exe"
export PATH

# ssh-agent
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

