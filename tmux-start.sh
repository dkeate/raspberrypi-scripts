#! /usr/bin/bash

# Set session Name
SESSION="pi5"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start new session with our name
    tmux new-session -d -s $SESSION

    # Setup htop window
    tmux rename-window -t 0 'htop'
    tmux send-keys -t 'htop' 'htop' C-m

    # Setup bash window
    tmux new-window -t $SESSION:1 -n 'bash'
fi

# Attach session, on the main window
tmux attach-session -t $SESSION:0
