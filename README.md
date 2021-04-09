# shell-scripts

Where I store a bunch of scripts that go further than just simple aliases and single functions!

### Table of Contents  
[Disciplined git committing](#Disciplined-git-committing)  
[Making a new shell command](#Making-a-new-shell-command)  
[Managing .zshrc](#managing-zshrc)  
[git operations](#git-operations)  
[Navigating folders](#Navigating-folders)

## Disciplined git committing

Makes sure that your commit messages always come with tags
```
gc
```

## Making a new shell command

Takes a .sh file in the current folder and puts it into /usr/local/scripts, and then makes it executable.
That way, you can call the command from anywhere
```bash
makecommand script.sh
```

## managing .zshrc

I use a bare git repo just for .zshrc, and since it's awkwardly placed in my `~/` folder, I can't use the normal `git` commands there. Instead, I use `config`.

```
config = git
configs = git status
configpush [comment] = git add .zshrc && git commit -m "[comment]" $&& git push
```

[more information](https://www.atlassian.com/git/tutorials/dotfiles)

## git operations

main operations

```
ga = git add
gaa = git add .
gb = git branch
gco = git checkout
gd = git diff
gr = git reset
gs = git status
gu = git fetch && git status
gql = git checkout -- 
```
### less-used but still essential operations

Delete a local branch:

```
gb -d [branch name]
```

Delete a remote branch:

```
git push origin --delete [branch name]
```

Start tracking a remote branch just pulled:

```
gnb [branch name]
```

A form of quickload (with last commit as quicksave):

```
gco .
```

Quickload, but just one file:

```
gql [file name]
```

## Navigating folders

for ease of navigating folders in terminal, I use aliases for `cd [directory]` too.

```
dc = cd ..
2learn = cd ~/Desktop/learn/
2dn = cd ~/Desktop/notes/
2dt = cd ~/Desktop/test/
home = cd ~/
2ds = cd ~/Documents/Scripts/
2dss = cd ~/Documents/Scripts/shell-scripts/
2subl = cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
2brew = cd ~/Github/brew-macOS/
2h2s = cd ~/Github/html2svg/
2uls = cd /usr/local/scripts/
```

### Navigating math

for absolutely nothing except math.

```
2math = cd ~/Github/math/
2tex = cd ~/Github/math/web/diagrams/tex/
```
