#set -g fish_prompt_pwd_dir_length 5
#function fish_prompt
#    printf '%s %s%s%s > ' $USER \
#        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
#end
function fish_prompt
    set -l full_path (string replace -r "^$HOME" "~" $PWD)

    echo (set_color $fish_color_cwd)"$USER @ $full_path"(set_color normal)

    echo -n "> "
end
