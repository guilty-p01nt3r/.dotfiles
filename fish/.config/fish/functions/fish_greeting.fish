function fish_greeting
    fortune -c -s -o -e computers cookie education fortunes goedel humorists knghtbrd linux literature love medicine men-women miscellaneous people platitudes rules-of-acquisition science wisdom work off/atheism off/black-humor off/definitions off/knghtbrd off/linux off/miscellaneous | sed -E 's/%/%\n/' | cowsay -W40 -f tux 
end
