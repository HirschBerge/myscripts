#!/bin/sh
nvidia-settings --assign CurrentMetaMode="DVI-D-0: nvidia-auto-select @1920x1080 +0+0 {ForceCompositionPipeline=On}, DP-4: nvidia-auto-select @2560x1080 +1920+0 {ForceCompositionPipeline=On}"
xrandr --output DP-4 --primary
