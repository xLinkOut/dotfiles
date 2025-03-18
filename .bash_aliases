#!/usr/bin/env bash

# BASH
alias ..="cd .."
alias c="clear"
alias ll="ls -lash"

# GIT
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gcm="git checkout master"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# PYTHON
alias activate="source .venv/bin/activate 2>/dev/null || source venv/bin/activate 2>/dev/null || echo 'No (.)venv found'"
alias new-venv="python3 -m venv .venv"
