mkdir output
i=0
for f in *.mp4; do
	((i = i + 1))
	ffmpeg -i "$f" -c copy "output/${i}_${f%mp4}m4a"
done

echo "Success converted ${i} mp4 files to m4a."
