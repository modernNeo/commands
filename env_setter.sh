#!/usr/bin/env bash

alias ll='ls -l'
alias la='ls -la'
alias l='ls -alF'
alias ..='cd ..'
alias ...='cd ../..'

PS1="\$(date +\"%Y-%b-%d %r\") \u@\h:\$(pwd)\n $ "
HISTTIMEFORMAT='%Y-%m-%d %T '

if [ "$(uname -s)" == "Linux" ]; then
	alias killVlc='ps -ef | grep "[u]sr/bin/vlc" | awk "{print $2}" | xargs kill -9'

	alias mount_cold_files="sudo mount -t nfs the_machine.local:/volume1/4_Regular_Cold_Files /home/jace/1_Home/0_Cryptomator_Encryped_Folders/4_Regular_Cold_Files"
	alias mount_multimedia_files="sudo mount -t nfs the_machine.local:/volume1/5_Multimedias /home/jace/1_Home/0_Cryptomator_Encryped_Folders/5_Multimedias"

	# https://www.softwaredeveloper.blog/git-credential-storage-libsecret
	uname -a | grep "microsoft" > /dev/null
	wsl=`echo $?`
	if [ "${wsl}" == 0 ]; then
		git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
	else
		git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
	fi
fi

alias monero="sudo monero-wallet-gui"

export PATH="/opt/platform-tools_r33.0.3:$PATH"

export PATH="/opt/commands/bin:$PATH"

export GPG_TTY=$(tty)
