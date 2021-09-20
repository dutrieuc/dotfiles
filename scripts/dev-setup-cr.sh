#!/bin/bash

server_name=$(basename $PWD)
socket_file=$(kcr list | grep $server_name)
if [[ $socket_file == "" ]]; then        
    # Create new kakoune daemon for current dir
    kcr shell --session $server_name &
fi
export KAKOUNE_SESSION=$server_name
export KAKOUNE_CLIENT=client0

sleep 0.2
i3-msg 'layout tabbed, split h'
sleep 0.2
$TERMINAL --hold -e zsh -c "
    cd ${PWD};
    echo '    -------';
    git status;
    echo '    -------';
    ls --color=always; kcr shell" &
sleep 0.2
i3-msg 'split v'
sleep 0.2
$TERMINAL --hold -e zsh -c "cd ${PWD}; odev ls; kcr shell;" &
sleep 0.6
i3-msg 'focus left, focus parent'
sleep 0.2
export KAKOUNE_CLIENT='source'
$TERMINAL --hold -e zsh -c "cd ~/workspace/odoosrc/versions/; kcr shell" &
sleep 0.2
i3-msg 'focus prev sibling, focus child'
sleep 0.2
kcr edit --session $KAKOUNE_SESSION
# kcr shell --session=session
