#!/bin/sh

if ! [ -x "$(command -v git)" ]; then
    echo "Git not installed"
    exit 1
fi

git config alias.ls  "log --pretty=format:%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]--decorate"
git config alias.ll  "log --pretty=format:%C(yellow)%h\\ %C(green)%ad\\ %Cred%d\\ %Creset%s%Cgreen\\ [%cn]--decorate --numstat --date=rfc2822"
git config alias.lsg "log --pretty=format:%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]--decorate --graph"
git config alias.lsg "= log --pretty=format:%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]--decorate --graph --all"
git config alias.cp  "cherry-pick"
git config alias.st  "status"
git config alias.stl "status -s"
git config alias.cl  "clone"
git config alias.ci  "commit"
git config alias.com "commit --all"
git config alias.co  "checkout"
git config alias.br  "branch"
git config alias.br  "branch"
git config alias.di  "diff"
git config alias.dif "= diff --word-diff"
git config alias.dc  "diff --cached"
git config alias.sl  "stash list"
git config alias.sa  "stash apply"
git config alias.ss  "stash save"
git config alias.lds "log --pretty=format:%C(yellow)%h\\ %C(green)%ad%Cred%d\\ %Creset%s%Cgreen\\ [%cn]--decorate --date=rfc2822"
git config color.ui true
git config core.autocrlf input
git config core.editor vim
git config core.fileMode false
git config core.quotepath false
git config push.default current

echo "Git config successfully applied"