starship init fish | source

if status is-interactive 
and not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end

fish_vi_key_bindings

clear
