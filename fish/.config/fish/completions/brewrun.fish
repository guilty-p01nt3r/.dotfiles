# ~/.config/fish/completions/brewrun.fish

function __fish_brewrun_packages
    for leaf in (/home/linuxbrew/.linuxbrew/bin/brew leaves 2>/dev/null)
        # Extract the base formula name (e.g., 'raine/aven/aven' -> 'aven')
        set -l formula (string split -r -m1 / $leaf)[-1]
        
        # If an executable matching the formula name exists directly, use it
        if test -x /home/linuxbrew/.linuxbrew/bin/$formula
            echo $formula
            continue
        end
        
        # Otherwise, find the corresponding binary in bin/ that points to this formula's Cellar
        set -l found ""
        for bin in /home/linuxbrew/.linuxbrew/bin/*
            if test -L $bin
                set -l target (realpath $bin 2>/dev/null)
                if string match -q "*/Cellar/$formula/*" $target
                    set -l bname (basename $bin)
                    # Pick the cleanest/shortest matching binary name (e.g. 'pi' for 'pi-coding-agent')
                    if test -z "$found"; or test (string length $bname) -lt (string length $found)
                        set found $bname
                    end
                end
            end
        end
        
        if test -n "$found"
            echo $found
        else
            echo $formula
        end
    end
end

complete -c brewrun -f
complete -c brewrun -n 'test (count (commandline -opc)) -eq 1' -a '(__fish_brewrun_packages)'
