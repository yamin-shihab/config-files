if status is-interactive
	# Commands to run in interactive sessions can go here
	fish_add_path "$HOME/.local/bin" "$HOME/.cargo/bin"
	alias pls="sudo"
	alias suspend="sudo systemctl suspend"
	alias connect="iwctl station wlan0 connect Atheer"
	alias disonnect="iwctl station wlan0 disconnect"
	alias weather="curl wttr.in/Edmonton"
	alias bat="bat --theme=Dracula"
	export TERMINAL="/usr/bin/wezterm"
	zoxide init fish | source

	if [ "$TERM" = "linux" ]; then
		printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
		printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
		printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
		printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
		printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
		printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
		printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
		printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
		printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
		printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
		printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
		printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
		printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
		printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
		printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
		printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
		printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
		printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
		clear
	end
end
