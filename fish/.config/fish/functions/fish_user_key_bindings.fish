function fish_user_key_bindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Insert here your bindings
    bind -M insert \cf tmux-sessionizer
    bind -M normal \cf tmux-sessionizer
    bind -M insert \cy\cy copyPwd
    bind -M normal \cy\cy copyPwd
end

set -g fish_user_key_bindings fish_user_key_bindings
