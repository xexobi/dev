if status is-interactive
    # Commands to run in interactive sessions can go here
end
function t
    tmux attach -t main; or tmux new -s main
end
