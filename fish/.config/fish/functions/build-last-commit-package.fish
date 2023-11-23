function build-last-commit-package
    set DIR (dirname (status --current-filename))
    bash -c $DIR"/bash_scripts/build-last-commit-package.sh $argv"
end
