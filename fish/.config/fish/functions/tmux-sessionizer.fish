function tmux-sessionizer
    set DIR (dirname (status --current-filename))
    if [ -z "$SHELL" ]
        set -x SHELL "/bin/bash"
    end
    $SHELL -c $DIR"/bash_scripts/tmux-sessionizer"
end

function herdr-sessionizer
    set DIR (dirname (status --current-filename))
    if [ -z "$SHELL" ]
        set -x SHELL "/bin/bash"
    end
    $SHELL -c $DIR"/bash_scripts/herdr-sessionizer"
end
