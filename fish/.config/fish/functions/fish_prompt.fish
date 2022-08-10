set -g fish_prompt_pwd_dir_length 5
function fish_prompt
    printf '%s %s%s%s > ' $USER \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
