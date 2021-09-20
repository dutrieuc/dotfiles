i3-msg 'layout tabbed, split h'
sleep 0.2
$TERMINAL --hold -e zsh -c "
    cd ${PWD};
    echo '    -------';
    git status;
    echo '    -------';
    ls --color=always; bash" &
sleep 0.2
i3-msg 'split v'
sleep 0.2
$TERMINAL --hold -e zsh -c "cd ${PWD}; odev ls; bash;" &
sleep 0.6
i3-msg 'focus left, focus parent'
sleep 0.2
$TERMINAL --hold -e zsh -c "cd ~/workspace/odoosrc/versions/; bash" &
sleep 0.2
i3-msg 'focus prev sibling, focus child'
# kcr shell --session=session
