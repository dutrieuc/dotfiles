#!/bin/bash

string=a=$(pactl info)
if [[ $string == *"iec958-stereo"* ]]; then
    pactl set-card-profile alsa_card.pci-0000_00_1b.0 output:analog-stereo
else
    pactl set-card-profile alsa_card.pci-0000_00_1b.0 output:iec958-stereo
fi
