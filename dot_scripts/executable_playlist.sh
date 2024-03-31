#!/usr/bin/env bash

# Create a dictionary of playlists
declare -A dalist
dalist["AAA Stuff"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0nYBO1YJdcmERQJENJqVka 
dalist["AAA Learn"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2uy0l4H0C-DAO15X1x5YrQ
dalist["Linux Stuff"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2dFuI5rL7V4NRu7lE8O9Qd
dalist["VIM"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0NVOovOiIoUnMNveamfcJV
dalist[".Long talks"]=https://youtube.com/playlist?list=PLw0ioCj5tQV3FsxZkFrGf3NR1EEYNNd0v&si=z3lOwY1PX4zsUfUW
dalist["Tunes"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV2ULk1g-PLWesjddSkVOGEB
dalist["Food"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV0ESuxkDip4lomBoqsZIIJf
dalist["SAO Abridged"]=https://www.youtube.com/playlist?list=PLuAOJfsMefuej06Q3n4QrSSC7qYjQ-FlU
dalist["XFCE Customization"]=https://www.youtube.com/playlist?list=PLw0ioCj5tQV3voECXcavuunHorZJHCDug
dalist["Ansible"]=https://www.youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70
dalist["Linux Basics sysadmin"]=https://www.youtube.com/playlist?list=PLtK75qxsQaMLZSo7KL-PmiRarU7hrpnwK
dalist["JS Data Structures"]=https://www.youtube.com/playlist?list=PLC3y8-rFHvwjPxNAKvZpdnsr41E0fCMMP
# Print keys on fzf
pik=$(printf '%s\n' "${!dalist[@]}" | fzf --prompt="pick playlist>" -e -i)

# nohup mpv --ytdl-format=22 --playlist-start=1 ${dalist[$pik]} &
mpv --ytdl-format='bestvideo[height<=?720]+bestaudio[abr<=128]/best[height<=?720]' ${dalist[$pik]} &
