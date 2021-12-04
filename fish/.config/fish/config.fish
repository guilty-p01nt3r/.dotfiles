if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Global Variables
set -x PATH $PATH /sbin/

fish_add_path /home/vince/.local/share/gem/ruby/3.0.0/bin
eval (keychain --eval --quiet --confhost)

## Perl
fish_add_path /home/vince/.perl5/bin

set PERL_MM_OPT "INSTALL_BASE=/home/vince/.perl5"
set PERL5LIB /home/vince/.perl5/lib
#eval eval (perl -I $HOME/.perl5/lib/perl5 -Mlocal::lib)

# Bindings
bind \cf tmux-sessionizer

# Alias ( Alias is an alias for fish functions lol)
alias r=". ranger"
alias calc="python3"
alias vim="nvim"
alias vi="nvim"
alias gitl="git log --graph --pretty=oneline --all --abbrev-commit"
#alias luamake=/home/vince/.config/nvim/lua-language-server/3rd/luamake/luamake



# Fish Configs
fish_vi_key_bindings insert
set fish_cursor_default line
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual line


# Starship theme
starship init fish | source


