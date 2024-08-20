if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Global Variables
set -x PATH $PATH /sbin/
export PAGER="less -R"
export LANG="en_US.UTF-8"
export UID=(id -u)
export GID=(id -g)

#fish_add_path /home/vince/.local/share/gem/ruby/3.0.0/bin
#eval (keychain --eval --quiet --confhost)

# GO 
#export GOROOT=$HOME/.lang/go
export GOPATH=$HOME/.lang/go

# Rust
#fish_add_path $HOME/.cargo/bin
set PATH $PATH:$HOME/.cargo/bin:$GOPATH/bin

## Perl
#fish_add_path /home/vince/.perl5/bin
#export PERL_MM_OPT="INSTALL_BASE=/home/vince/.perl5"
#export PERL5LIB=/home/vince/.perl5/lib
#eval eval (perl -I $HOME/.perl5/lib/perl5 -Mlocal::lib)

## NVM

## Add local pip install
#fish_add_path /home/vince/.dotfiles/bin/.local/bin

# Alias ( Alias is an alias for fish functions lol)
alias calc="python3 -i -c 'import math' "
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
#alias diff="colordiff"
alias less="less -R"
alias gitl="git log --graph --pretty=oneline --all --abbrev-commit"
#alias luamake=/home/vince/.config/nvim/lua-language-server/3rd/luamake/luamake
alias kubectl="minikube kubectl --"
alias cat="bat"
alias ls="exa"
alias l="exa -lh"
alias la="exa -lah"
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcub="docker-compose up -d --build"
alias dcl="docker-compose logs -ft"
alias dls="docker ps -a"
alias ssh="TERM=xterm-256color /usr/bin/ssh"
alias oh="thunar ."

# I do not want to shoot myself in the foot
alias rm="trash -i"

# Fish Configs
fish_vi_key_bindings insert
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# Starship theme
#starship init fish | source

# Icons in terminal
#source ~/.local/share/icons-in-terminal/icons.fish
