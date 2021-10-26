#!/bin/bash

export PS1="\$(date +\"%Y-%b-%d %r\") \u:\h\$(pwd)\n $ "

. ./login_script.sh

alias vim="vim -c \"set clipboard=unnamedplus\""

alias killVlc='ps -ef | grep "[u]sr/bin/vlc" | awk '{print $2}' | xargs kill -9'

HISTTIMEFORMAT='%Y-%m-%d %T '
