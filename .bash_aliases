#!/usr/bin/env bash

# BASH
alias ..="cd .."
alias c="clear"
alias ll="ls -lash"

# COMMON DIRECTORIES
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# GIT
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gc="git commit"
alias gcm="git checkout master"
alias gsync="git pull && git fetch -p"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# PYTHON
alias create-venv="python3 -m venv venv"
alias activate="source venv/bin/activate"

# MISC
alias nmap-disc="nmap -sP 192.168.1.1/24"
alias arp-disc="ifconfig | grep broadcast | arp -a | grep -v '^?'"
alias download-website="wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows"
alias get-temperature="/usr/bin/vcgencmd measure_temp | awk -F \"[=']\" '{print($2)}'" # Raspberry Pi only
