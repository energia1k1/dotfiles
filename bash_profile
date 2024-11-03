#!/bin/bash

export PATH="~/bin:${PATH}"
export EDITOR="emacs"

if [[ "$(tty)" = "/dev/tty1" ]]; then
    exec startx
fi
