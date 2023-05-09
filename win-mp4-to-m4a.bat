mkdir output
for %A in (*.mkv) do ffmpeg -i "%~nA.mkv" "output/%~nA.mp4"
