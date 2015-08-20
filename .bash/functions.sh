# "git commit only"
# Commits only what's in the index (what's been "git add"ed).
# When given an argument, uses that for a message.
# With no argument, opens an editor that also shows the diff (-v).

function gco {
  if [ -z "$1" ]; then
    git commit -v
  else
    git commit -m "$1"
  fi
}


# "git commit all"
# Commits all changes, deletions and additions.
# When given an argument, uses that for a message.
# With no argument, opens an editor that also shows the diff (-v).

function gca {
  git add --all && gco "$1"
}


# Print working file.
#
#     henrik@Henrik ~/.dotfiles[master]$ pwf ackrc
#     /Users/henrik/.dotfiles/ackrc

function pwf {
  echo "$PWD/$1"
}


# Create directory and cd to it.
#
#     henrik@Nyx /tmp$ mcd foo/bar/baz
#     henrik@Nyx /tmp/foo/bar/baz$

function mcd {
  mkdir -p "$1" && cd "$1"
}


# SSH to the given machine and add your id_rsa.pub or id_dsa.pub to authorized_keys.
#
#     henrik@Nyx ~$ sshkey hyper
#     Password:
#     sshkey done.

function sshkey {
  ssh $1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_?sa.pub  # '?sa' is a glob, not a typo!
  echo "sshkey done."
}
