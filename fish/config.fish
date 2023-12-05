starship init fish | source
source /opt/homebrew/opt/asdf/libexec/asdf.fish

fish_vi_key_bindings

if status is-interactive
and not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end


clear


