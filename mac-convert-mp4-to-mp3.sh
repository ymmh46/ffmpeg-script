mkdir output
i=0
for f in *.mp4; do
	((i = i + 1))
	echo "Processing $f"
	ffmpeg -i "$f" -b:a 192K -vn "output/${i}_${f%.mp4}.mp3"
done

echo "Success converted ${i} mp4 files to mp3."
