function copyPwd
    pwd | tr -d '\n' | xclip -selection clipboard
end

