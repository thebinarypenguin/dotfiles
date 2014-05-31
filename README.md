# TheBinaryPenguin's Dotfiles and Other Goodies

## Contents

- Shell config (via .profile and .bashrc)
- Git config (see notes below)
- Vim config
- Tmux config
- Ubuntu Mono font
- GNOME Terminal (see notes below)

## Notes

### Git

Basic config

```
git config --global user.name "User Name"
git config --global user.email email@address.com
git config --global github.user GithubUsername
git config --global github.token SecretToken
git config --global diff.tool YourDiffTool
git config --global merge.tool YourMergeTool
```

Aliases

```
# Short status
stat = status -sb

# Better log, shows diffstats
lg = log --stat

# Full log, shows patches
flg = log -p

# Pretty log, it's pretty
plg = log --graph --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'

# What did I do yesterday?
yesterday = log --graph --author=Ethan --after='1 day ago' --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'

# What did I do last week?
lastweek = log --graph --author=Ethan --after='1 week ago' --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
```

### Vim

For organizational purposes all vim config lives in .vim/ You will need to make the following symlinks

```
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc
```

### GNOME Terminal

Force GNOME-Terminal to set the TERM environment variable to "xterm-256color"
(instead of the default "xterm") by having it run the following command instead of the normal shell command.

```
env TERM=xterm-256color /bin/bash
```
