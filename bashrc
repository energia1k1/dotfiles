#!/bin/bash

if [[ $- != *i* ]]; then
    return
fi

if [[ ${EUID} == 0 ]]; then
    PS1='$(pwd) \[\033[01;31m\]> \[\033[00m\]'
else
    PS1='$(pwd) \[\033[01;32m\]> \[\033[00m\]'
fi

alias emacs='emacsclient -t'
alias ls='ls --color=auto'
