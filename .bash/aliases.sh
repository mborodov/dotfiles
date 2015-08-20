# Magento aliases
alias modman-php="php ~/Documents/tools/modman-php/modman.php" # Change on you path for modman-php
alias mcc="n98-magerun.phar cache:clean; n98-magerun.phar cache:flush"

# Management
alias dots="cd ~/.dotfiles && sublime"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'
alias hosts='sudo nano /etc/hosts'
alias zshconfig='nano ~/.zshrc'

# Shell
alias la='ls -alh'
alias top='top -ocpu'
alias tf='tail -F -n200'
alias c='clear'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Show external ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# View http traffic
alias sniff="sudo ngrep -d 'eth0' -t '^(GET|POST) ' 'tcp and port 80'" #For Mac users change eth0 on en1

# Edit note
alias note='nano ~/Documents/note'

# Timer for JIRA tasks
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
 
