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
export PS1='\[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$(parse_git_branch)\[\033[0m\]$ '

# Magento aliases
alias modman-php="php ~/Documents/tools/modman-php/modman.php" # Change on you path for modman-php
alias mcc="n98-magerun.phar cache:clean; n98-magerun.phar cache:flush"

# Management
alias dots="cd ~/.dotfiles && sublime"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'
alias hosts='sudo nano /etc/hosts'
alias zshconfig='nano ~/.zshrc'

# git commamands simplified
alias gs='git status'
alias gch='git checkout'
alias gc='git commit'
alias gr='git rebase'
alias gb='git branch'
alias ga='git add -A'
alias gpl='git pull'
alias gps='git push'
alias gl='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias gl2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# Shell
alias la='ls -lhaG'
alias top='top -ocpu'
alias tf='tail -F -n200'
alias clr='clear'

# Brew
alias bi='brew install'
alias bui='brew uninsall'
alias bci='brew cask install'

# Lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# Navigate aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Show external ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# View http traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'" #For Mac users change eth0 on en1

# Edit note
alias note='nano ~/Documents/note'

# Timer for JIRA tasks
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'