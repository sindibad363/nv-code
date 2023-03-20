#!/bin/bash
if [ $(git -C $HOME/.config/nvim rev-parse HEAD) == $(git -C $HOME/.config/nvim ls-remote $(git -C $HOME/.config/nvim rev-parse --abbrev-ref @{u} | sed 's/\// /g') | cut -f1) ]; then
 echo up to date 
else
 git -C $HOME/.config/nvim remote update
 STATUS=$(git -C $HOME/.config/nvim status --porcelain=v1 2>/dev/null | wc -l)
 if [ $STATUS = 0 ]; then
  git -C $HOME/.config/nvim pull
 else
  read -p "Found changes in your init.vim .(R)evert them or (d)ont update or try to (m)erge :" result
  case $result in
   "r"|"R")
    git -C $HOME/.config/nvim stash save --keep-index --include-untracked
    git -C $HOME/.config/nvim stash drop ;;
   "d"|"D")
    ;;
   "m"|"M")
    git -C $HOME/.config/nvim stash save --keep-index --include-untracked
    git -C $HOME/.config/nvim pull
    git -C $HOME/.config/nvim stash apply
    git -C $HOME/.config/nvim stash clean;;
   *)
   ;;
  esac
 fi
fi
