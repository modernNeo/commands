#!/bin/bash

export PS1="\$(date +\"%Y-%b-%d %r\") \u:\h\$(pwd)\n $ "

alias ll='ls -l'
alias la='ls -la'
alias l='ls -alF'
alias ..='cd ..'
alias ...='cd ../..'
alias vim="vim -c \"set clipboard=unnamedplus\""

HISTTIMEFORMAT='%Y-%m-%d %T '
