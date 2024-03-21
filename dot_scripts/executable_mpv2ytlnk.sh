#!/bin/bash

# Pull the YouTube link from the clipboard
clipboard_content=$(xclip -selection clipboard -o)

# run mpv with the copied YouTube link
mpv --ytdl-format=22 $clipboard_content
