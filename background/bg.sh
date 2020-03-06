#!/bin/sh
for z in `exa -d $HOME/Pictures/* | shuf`
do
	echo $z >>  $HOME/.scripts/background/resources
done

chmod +x $HOME/Pictures/* $HOME/.scripts/background/*

#Actual Script starts here
#input= "$HOME/.scripts/background/resources"
while IFS= read -r line
do
	[ ! -z "$line" ] && cp "$line" ~/.config/wall.png
	xwallpaper --zoom ~/.config/wall.png
#	echo $line
	sleep 600
done < $HOME/.scripts/background/resources
rm -f $HOME/.scripts/background/resources
sh $HOME/.scripts/background/bg.sh
