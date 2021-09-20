i3-msg 'split h'
sleep 0.2
urxvt -hold -cd ${PWD} &
sleep 0.2
i3-msg 'split v'
sleep 0.2
urxvt -hold -cd ${PWD} &
sleep 0.2
i3-msg 'split v'
sleep 0.2
urxvt -hold -cd ${PWD} &
sleep 0.2
i3-msg 'resize shrink height 30 px or 30 ppt, focus left'
