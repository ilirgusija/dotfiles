#█▓▒░ {de,}compression
function uz() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2)  tar xvjf "$1" ;;
      *.tar.gz)   tar xvzf "$1" ;;
      *.bz2)       bunzip2 "$1" ;;
      *.rar)       unrar x "$1" ;;
      *.gz)         gunzip "$1" ;;
      *.tar)       tar xvf "$1" ;;
      *.tbz2)     tar xvjf "$1" ;;
      *.tgz)      tar xvzf "$1" ;;
      *.zip)         unzip "$1" ;;
      *.Z)      uncompress "$1" ;;
      *.7z)           7z x "$1" ;;
      *.xz)           unxz "$1" ;;
			*)             echo "'$1' unknown compression" ;;
    esac
  else
    echo "'$1' not a valid file"
  fi
}
function z() {
	if [[ -f "$1" ||  -d "$1" ]]; then
		tar zcvf "${1}_$(date '+%Y-%m-%d').tar.gz" "$1";
	else
		echo "not a valid file or dir"
	fi
}
