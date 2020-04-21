#/bin/sh
for f in *.mkv
do
	echo "Converting $f now."
	echo "yes" | ffmpeg -i "$f" -c copy "${f%.mkv}.mp4" > /dev/null 2>&1
done
rm *.mkv
