# TheBinaryPenguin's Dotfiles and More

## Usage

1. Copy everything (except `.gitignore` and `README.md`) to your home directory

2. Replace placeholders in `.gitconfig`

3. Create the following symlinks

   ```
   ln -s ~/.vim/.vimrc ~/.vimrc
   ln -s ~/.vim/.gvimrc ~/.gvimrc
   ```

## Desktop Configuration Tips

The following may be Ubuntu and/or GNOME specific.

### GNOME Terminal

GNOME Terminal can be configured to set the TERM environment variable to "xterm-256color" (instead
of the default "xterm") by having it run the following command instead of the normal shell command.

```
env TERM=xterm-256color /bin/bash
```

### "Places" Directories

The default "Places" directories can be configured with the `xdg-user-dirs-update` command.

__Example:__ Point to lowercase versions of the defaults

```
xdg-user-dirs-update --set DESKTOP $HOME/desktop
xdg-user-dirs-update --set DOWNLOAD $HOME/downloads
xdg-user-dirs-update --set TEMPLATES $HOME/templates
xdg-user-dirs-update --set PUBLICSHARE $HOME/public
xdg-user-dirs-update --set DOCUMENTS $HOME/documents
xdg-user-dirs-update --set MUSIC $HOME/music
xdg-user-dirs-update --set PICTURES $HOME/pictures
xdg-user-dirs-update --set VIDEOS $HOME/videos
```

### File Associations

File associations can be changed by copying the defaults from
`/usr/share/applications/defaults.list` to `~/.local/share/applications/mimeapps.list` and then
modifying them.

__Example:__ Change default text editor from Gedit to Sublime Text

```
sed -n 's/gedit.desktop/sublime_text.desktop/Ip' \
  /usr/share/applications/defaults.list >>       \
  ~/.local/share/applications/mimeapps.list
```

### Desktop Auto-Run

Desktop files in `~/.config/autostart/` are run automatically when you login.

__Example:__ Run awesome-script.sh

```
[Desktop Entry]
Type=Application
Name=Awesome Script Name
Exec=~/bin/awesome-script.sh
Icon=system-run
X-GNOME-Autostart-enabled=true
```