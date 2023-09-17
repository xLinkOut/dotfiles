#!/usr/bin/env bash

# BASH
alias ..="cd .."
alias lash="ls -lash"
alias l="ls"
alias c="clear"

# COMMON DIRECTORIES
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias home="cd ~"

# GIT
alias g="git"
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gc="git commit"
alias gm="git checkout master"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# PYTHON
alias create-venv="python3 -m venv venv"
alias activate="source venv/bin/activate"

# MISC
alias nmap-disc="nmap -sP 192.168.1.1/24"
alias arp-disc="ifconfig | grep broadcast | arp -a | grep -v '^?'"
alias download-website="wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows"
