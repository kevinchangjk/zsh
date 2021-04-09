# zsh config

### Table of Contents  
[Making a new shell command](#Making-a-new-shell-command)  
[git shorthands](#git-shorthands)  
[Navigating folders](#Navigating-folders)  
[Path management](#Path-management)

## Making a new shell command

Running `mco <command>.sh` Takes a .sh file in the current folder and puts it into /usr/local/scripts, and then makes it executable.
That way, you can call the command from anywhere
```bash
mco script.sh
```

## managing .zshrc

The philosophy here is to make it easier to make things easier.

Hence these two aliases:
```
zshrc → nvim ~/.zshrc
reload → source ~/.zshrc
```
With `zshrc` I can open my `~/.zshrc` file from anywhere, and with `reload` I can re-source my configuration without having to leave and re-enter my terminal session.

## git shorthands

For git, I use [git number](https://github.com/holygeek/git-number). Running `git number` on its own resembles running `git status`, but this time with numbers beside each listed file.

and so it's incorporated into my shorthands

```
gs → git number

ga → git number add
gaa → git add .
gr → git reset

gc → git commit
gcm → git commit -m
gca → git commit --amend -m
gb → git branch
gco → git number checkout

gd → git number diff
gu → git fetch && git status
```
#### less-used but still essential operations

Delete a local branch:

```
gb -d <branch name>
```

Delete a remote branch:

```
git push origin --delete <branch name>
```

A form of quickload (with last commit as quicksave):

```
gco .
```

Quickload, but just one file:

```
gco <file name>
```

## Navigating folders

For ease of navigating folders in terminal, I use aliases for `cd <directory>` too.

```
out → cd ..
back → cd -
home → cd ~/
```

To jump to commonly used folders, I use `2` followed by a shorthand of my destination folder, sometimes simply the first letter of the folders leading up to that folder.
```
2zsh → cd ~/Documents/Scripts/zsh/config
2vim → cd ~/.config/nvim
2qmk → cd ~/Github/qmk_firmware
2keeb → cd ~/Github/qmk_firmware/keyboards/dz60/keymaps/khang

2math → cd ~/Github/math/
2tex → cd ~/Github/math/web/diagrams/tex/
2bot → cd ~/Github/trading-bot
2learn → cd ~/Desktop/learn
2brew → cd ~/Github/brew-macOS

2uls → cd /usr/local/scripts
2dn → cd ~/Desktop/notes
2ds → cd ~/Documents/Scripts
2dzf → cd ~/Documents/Scripts/zsh/functions
```

## Path management
This is just how I like do it:
```
path+=('/usr/local/scripts')
path+=('/usr/local/scripts/tikz2svg-master')
path+=('/usr/local/Cellar/gcc@7')
path+=('/usr/local/opt/python/libexec/bin')
```

## Codeforces

Every now and then I do some problem-solving on [codeforces](https://codeforces.com), and occasionally I take part in contests. For this, I like to be able to quickly test my code, instead of having to keep copying input from the website and pasting it into my terminal input.

I write my code in `<problem number>.py` or `<problem number>.cpp` (if my brute force isn't good enough) and save the input strings into `input_<probelm number>.txt`.

I then issue the following commands to (compile if necessary) and run the code, taking input from  `input_<probelm number>.txt`.  
```
cnr <problem numebr>.cpp
pnr <problem number>.py

// cnr → compile and run
// pnr → python and run
```
