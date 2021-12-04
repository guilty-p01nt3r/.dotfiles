function tmux-sessionizer
    set DIR (dirname (status --current-filename))
    bash -c $DIR"/bash_scripts/tmux-sessionizer"
end
