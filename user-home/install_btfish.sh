#!/bin/bash
# do not run this as root if you want to set fish as non-root shell

set -e -u
# -e: exits when there's an error
# -u: aborts if there's any unset variables

realuser="$(whoami)"

# check root
if [ -f "/system/bin/app_process" ]; then
	SUDO=""
else
	if [ "$(id)" == "0" ]; then
		SUDO=""
	else
		SUDO="sudo -s"
	fi
if

# setup fish if haven't installed yet
if ! "$(command -v fish)" >/dev/null 2>&1; then
	# install fish
	echo "Installing fish shell..."
	${SUDO} bash -c "apt install fish git curl || pacman -S fish git curl || dnf install fish git curl || apk add fish git curl"

	echo "Setting up fish shell as your default shell"
	# change shell as fish
	${SUDO} chsh -s "$(command -v fish)" "${realuser}"
fi

# install bob the fish
if [ ! -e "${HOME-:/home/${realuser}}/.local/share/omf/themes/bobthefish" ]; then
	echo "Setting up oh-my-fish for you"
	curl -L https://get.oh-my.fish | fish

	echo "Installing the fish theme: bob the fish"
	fish -c "omf install bobthefish"
	fish -c "omf theme bobthefish"
else
	echo "Bob the Fish is already installed! skipping install and setting it"
	fish -c "omf theme bobthefish"
fi

# alert a user
cat <<- EOM
	Successfully Installed bob-the-fish! and already set as your default theme!

	If it feels like it isn't applied yet, run "omf doctor" to diagnose and give solution
EOM
