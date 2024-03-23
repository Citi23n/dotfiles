#!/usr/bin/env bash

# Create a dictionaries of playlists
declare -A dalist
dalist["AAA Stuff"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0nYBO1YJdcmERQJENJqVka 
dalist["AAA Learn"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2uy0l4H0C-DAO15X1x5YrQ
dalist["Linux Stuff"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2dFuI5rL7V4NRu7lE8O9Qd
dalist["VIM"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0NVOovOiIoUnMNveamfcJV
dalist[".Long talks"]=https://youtube.com/playlist?list=PLw0ioCj5tQV3FsxZkFrGf3NR1EEYNNd0v&si=z3lOwY1PX4zsUfUW
dalist["Tunes"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2ULk1g-PLWesjddSkVOGEB
dalist["Food"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0ESuxkDip4lomBoqsZIIJf
dalist["SAO Abridged"]=https://www.youtube.com/playlist?list=PLuAOJfsMefuej06Q3n4QrSSC7qYjQ-FlU
# Print keys on fzf
picklist=$(printf '%s\n' "${!dalist[@]}" | fzf --prompt="pick playlist>" -e -i)

# get the playlist number
# echo "Playlist Nr?"
# read ans
# if [[ $ans != ^[0-9]+$ ]]; then
# 	echo "Incorrect entry"
# 	exit 1
# fi
# nohup mpv --ytdl-format=22 --playlist-start=1 ${dalist[$picklist]} &
# nohup mpv --ytdl-format='bestvideo[height<=?720]+bestaudio[abr<=128]/best[height<=?720]' --playlist-start=$ans ${dalist[$picklist]} &
nohup mpv --ytdl-format='bestvideo[height<=?720]+bestaudio[abr<=128]/best[height<=?720]' ${dalist[$picklist]} &
