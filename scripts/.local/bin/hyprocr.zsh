#!/bin/zsh
# Dependencies: tesseract imagemagick wl-clipboard hyprshot

die(){
  notify-send "$1"
  exit 1
}
cleanup(){
  [[ -n $1 ]] && rm -r "$1"
}

SCR_IMG=$(mktemp -d) || die "failed to create tmpdir"

  # shellcheck disable=SC2064
trap "cleanup '$SCR_IMG'" EXIT

hyprshot -m region -f scr.png --silent -o $SCR_IMG
sleep 0.1
mogrify -modulate 100,0 -resize 400% "$SCR_IMG/scr.png"  || die "failed to convert image"
tesseract "$SCR_IMG/scr.png" "$SCR_IMG/scr" &> /dev/null || die "failed to extract text"
wl-copy < "$SCR_IMG/scr.txt" || die "failed to copy text to clipboard"
notify-send "Text extracted from image" || die "failed to send notification"
exit