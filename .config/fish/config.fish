set -U fish_greeting

if status is-interactive

    if test -f ~/.cache/wal/colors.fish
        source ~/.cache/wal/colors.fish
    end

    oh-my-posh init fish --config ~/.config/oh-my-posh/rice.omp.json | source

end
