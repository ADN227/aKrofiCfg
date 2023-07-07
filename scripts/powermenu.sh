dir="$HOME/.config/rofi/"
theme="base"

shutdown=""
reboot=""
lock=""

rofi_cmd(){
	rofi -dmenu -p "Powermenu" -theme $dir/"$theme".rasi -mesg "Select an option"
}

run_rofi() {
	echo -e "$shutdown\n$reboot\n$lock" | rofi_cmd
}

chosen="$(run_rofi)"
case $chosen in
	$shutdown)
		systemctl poweroff
		;;
	$reboot)
		systemctl reboot
		;;
	$lock)
		qtile cmd-obj -o cmd -f shutdown
		;;
esac
