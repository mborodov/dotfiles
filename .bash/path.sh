# Dotfile bins.
export PATH=~/.bin:$PATH

# So homebrew /usr/local/bin is preferrable to /usr/bin.
export PATH=/usr/local/bin:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# Make autojump's "j" available.
# brew install autojump
# https://github.com/joelthelion/autojump
if command -v brew >/dev/null && [ -f `brew --prefix`/etc/autojump.sh ]; then
  . `brew --prefix`/etc/autojump.sh
fi