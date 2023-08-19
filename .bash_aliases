# general aliases
alias aliases='nvim ~/.bash_aliases && source ~/.bash_aliases'
# alias nf='clear ; neofetch --ascii_distro PacBSD'
alias nf='clear ; neofetch --ascii_distro redhat'
alias x='exit'
alias c='clear'
alias lsd='ls -lh'
alias fuck="sudo !!"
alias ytv-mid="yt-dlp -f 22 -o '%(uploader)s - %(title)s %(id)s.%(ext)s'"

# distrobox
alias dbl="distrobox-list -r"
alias dbs="distrobox-stop -r"
alias dbe="distrobox-enter -r"
function db() { distrobox $1; }

# vim and programming aliases
alias zprog="cd ~/Programming/"
alias nv="nvim"
alias v='nvim'
#alias viminit="nvim ~/.config/nvim/init.vim"
#alias scripts='vim ~/.scripts/"$(ls ~/.scripts/ | fzf)"'
#alias scriptstart='~/.scripts/"$(ls ~/.scripts/ | fzf)"'

# git aliases
#alias gc='git checkout "$((git branch | fzf) | awk "{print $2}")"'
#alias gc='git checkout "$((git branch | fzf) | sed "s/..//")"'
#alias gs="git status"

# esoteric aliases
#alias startvpn='sudo openvpn --config /etc/openvpn/server/"$(ls /etc/openvpn/server/ | fzf)"'
#alias ftp="sudo ~/.scripts/bftpd.sh"
#alias start-conky="conky -c ~/.config/conky/conky1.config"
alias weeb="ani-cli -q 720"
alias wddg="w3m duckduckgo.com"
alias open='xdg-open'

# functions
function cheat() { curl cheat.sh/$1; }   #cheat sheet
function cht() { curl cht.sh/$1; }   #cht sheet

# notes system for cli
function notes() {
	case $1 in
		add | a)
			read -p "What would you like to add: " addnote
			echo $addnote >> ~/.bash_notes
		;;
		view | v)
			cat ~/.bash_notes
		;;
		edit | e)
			nvim ~/.bash_notes
		;;
		clear | c)
			sed -i '1!d' ~/.bash_notes
			echo "Cleared!"
		;;
		*)
			echo "notes (a)dd | (v)iew | (e)dit | (c)lear"
		;;
	esac
}
cat ~/.bash_notes

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
