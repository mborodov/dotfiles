# Dotfile bins.
export PATH=~/.bin:$PATH

# So homebrew /usr/local/bin is preferrable to /usr/bin.
export PATH=/usr/local/bin:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# Pow shouldn't hide errors in non-ASCII apps:
# https://github.com/37signals/pow/issues/268
# Also fixes UTF-8 display in e.g. git log.

export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG

# Promt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

branch() {
  git branch | grep '*' | sed 's/* //'
}
export PS1='\[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$(parse_git_branch)\[\033[0m\]$ '


# Magento aliases
alias modman-php="php ~/Documents/tools/modman-php/modman.php" # Change on you path for modman-php
alias mcc="n98-magerun.phar cache:clean; n98-magerun.phar cache:flush"

# Management
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/Documents/dotfiles; source install.sh'
alias hosts='sudo nano /etc/hosts'

# git commamands simplified
alias gs='git status'
alias gch='git checkout'
alias gc='git commit -am $1'
alias gr='git rebase'
alias grh='git reset --hard HEAD'
alias gb='git branch'
alias ga='git add -A'
alias gpl='git pull'
alias gps='git push'
alias gpc='git push origin $(branch)'
alias gl='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias gl2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pr="cd ~/Documents/projects"
alias g="git"
alias h="history"
alias bf="sudo find -x / -type f -size +1G -exec ls -lh {} \;"

# Shell
alias la='ls -lhaG'

alias top='top -ocpu'
alias tf='tail -F -n200'
alias clr='clear'

alias du="du -h"
alias df="df -h"
alias p='ping -c 4'

# Brew
alias bi='brew install'
alias bui='brew uninsall'
alias bci='brew cask install'

# Lock computer
alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# Navigate aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Show ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias lip="ipconfig getifaddr en1"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias etrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# View http traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'" #For Mac users change eth0 on en1

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromek="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Edit note
alias note='nano ~/Documents/note'

# Timer for JIRA tasks
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
