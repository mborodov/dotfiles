# Maksim Borodov’s dotfiles

![Screenshot of my shell prompt](http://i.imgur.com/o3yM8ZV.jpg)

## Installation

### Using Git and the install script

You can clone the repository to ~/Docuemtns/dotfiles. The install script will pull in the latest version and copy the files to your home folder.

```bash
mkdir ~/Documents/dotfiles && cd ~/Documents && git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source install.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
install bootstrap.sh
```

To reload config:

```bash
reload
```

