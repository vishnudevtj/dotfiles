#!/bin/bash
killall conky
sleep 5s
conky -d -c ~/.config/conky/conky1.conkyrc &
conky -d -c ~/.config/conky/conky2.conkyrc &
