#!/usr/bin/env bash

# Pull the YouTube link from the clipboard
clipboard_content=$(xclip -selection clipboard -o)

# run mpv with the copied YouTube link
#mpv --ytdl-format=22 --playlist-start=1 $clipboard_content
mpv --ytdl-format='bestvideo[height<=?720]+bestaudio[abr<=128]/best[height<=?720]' --playlist-start=1 $clipboard_content
