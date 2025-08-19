if status is-interactive
    # Commands to run in interactive sessions can go here
end

function t
    tmux attach -t main; or tmux new -s main
end

set -x MOZ_ENABLE_WAYLAND 1
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
