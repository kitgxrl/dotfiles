#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/dev/dotfiles/config/rofi/applets/android"
rofi_command="rofi -theme $dir/three.rasi"

# Error msg
msg() {
	rofi -theme "$dir/message.rasi" -e "Please install 'scrot' first."
}

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		if [[ -f $(which maim) || -f $(which xclip) ]]; then
			sleep 1; maim | xclip -selection clipboard -t image/png
		else
			msg
		fi
        ;;
    $area)
		if [[ -f $(which maim) || -f $(which xclip) ]]; then
			sleep 1; maim -s | xclip -selection clipboard -t image/png
		else
			msg
		fi
        ;;
    $window)
		if [[ -f $(which maim) || -f $(which xclip) ]]; then
			sleep 1; maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png
		else
			msg
		fi
        ;;
esac

