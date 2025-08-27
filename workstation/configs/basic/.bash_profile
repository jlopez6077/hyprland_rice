#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
	
    
if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
    fastfetch
	echo -n "Do you want to start Hyprland? (y/N) "
	read -n 1 -r REPLY
	echo  # move to new line

	if [[ $REPLY =~ ^[Yy]$ ]]; then
		exec Hyprland
	fi
fi
