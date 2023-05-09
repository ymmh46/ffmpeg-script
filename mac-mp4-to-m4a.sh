mkdir output
for f in *.mp4; do
	ffmpeg -i "$f" -c copy "output/${f%mp4}m4a"
done
