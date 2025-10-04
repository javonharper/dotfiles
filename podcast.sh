#!/bin/bash

# Destination inside iCloud Drive
DEST="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Podcasts"
mkdir -p "$DEST"

ARTIST=""
ALBUM="YouTube Downloads"   # default album
MAX_DURATION=""             # in hours
URL=""

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --artist)
      ARTIST="$2"
      shift 2
      ;;
    --album)
      ALBUM="$2"
      shift 2
      ;;
    --max-duration)
      MAX_DURATION="$2"
      shift 2
      ;;
    *)
      URL="$1"
      shift
      ;;
  esac
done

if [[ -z "$URL" ]]; then
  echo "Usage: podcast <YouTube URL> [--artist \"Name\"] [--album \"Album\"] [--max-duration HOURS]"
  exit 1
fi

# If no artist provided, fetch channel name from yt-dlp
if [[ -z "$ARTIST" ]]; then
  ARTIST=$(pipx run yt-dlp --get-filename -o "%(uploader)s" "$URL")
fi

# Build ffmpeg metadata args
META_ARGS=()
META_ARGS+=("-metadata" "artist=$ARTIST")
META_ARGS+=("-metadata" "album=$ALBUM")

# Convert array to string for yt-dlp
JOINED=$(printf ' %q' "${META_ARGS[@]}")

# Handle max duration
SECTIONS=""
if [[ -n "$MAX_DURATION" ]]; then
  SECONDS=$(( MAX_DURATION * 3600 ))
  SECTIONS="--download-sections *0-$SECONDS"
fi

# Run yt-dlp through pipx
pipx run yt-dlp -f bestaudio --extract-audio --audio-format m4a \
  --audio-quality 0 \
  --postprocessor-args "ffmpeg:$JOINED" \
  -o "$DEST/%(title)s.%(ext)s" \
  $SECTIONS \
  "$URL"
