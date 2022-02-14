
# Dotfiles

Config files of my linux distros.

## Some helpful commands

#### Back up `gsettings` configuration for `/org/gnome/` to a file, via [dconf](https://wiki.gnome.org/Projects/dconf):


```bash
dconf dump /org/gnome/ > settings.dconf

```

#### Restore `dconf` configurations from a file:

```bash
dconf load /org/gnome/ < settings.dconf

```

