#!/usr/bin/env bash

# Pull the YouTube link from the clipboard
clipboard_content=$(xclip -selection clipboard -o)

# run mpv with the copied YouTube link
mpv --ytdl-format=22 --playlist-start=1 $clipboard_content
