#!/usr/bin/env bash

alias ll='ls -l'
alias la='ls -la'
alias l='ls -alF'
alias ..='cd ..'
alias ...='cd ../..'

if [ "$(uname)" == "Darwin" ]; then
  PROMPT="%D{%Y-%b-%f %L:%M:%S %p} %n@%m%/
  $ "

  alias history="history -E"
elif [ "$(uname -s)" == "Linux" ]; then
  export PS1="\$(date +\"%Y-%b-%d %r\") \u:\h\$(pwd)\n $ "

  alias vim="vim -c \"set clipboard=unnamedplus\""

  alias killVlc='ps -ef | grep "[u]sr/bin/vlc" | awk "{print $2}" | xargs kill -9'

  HISTTIMEFORMAT='%Y-%m-%d %T '
fi
