function fish_user_key_bindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Insert here your bindings
    bind -M insert \cf tmux-sessionizer
    bind -M normal \cf tmux-sessionizer
    bind -M insert \cy\cy copyPwd
    bind -M normal \cy\cy copyPwd

    bind -M insert ! bind_bang
    bind -M insert '$' bind_dollar
    bind -M insert '$?' bind_status
    bind -M insert '$$' bind_self
end

set -g fish_user_key_bindings fish_user_key_bindings
