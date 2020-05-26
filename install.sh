#!/bin/bash

echo "INFO Creating ~/.git-hooks directory"
mkdir -p $HOME/.git-hooks

echo "INFRO Download prepare-commit-msg"
curl -sL https://raw.githubusercontent.com/minhdanh/git-auto-commit-prefix/master/prepare-commit-msg -o $HOME/.git-hooks/prepare-commit-msg
chmod +x $HOME/.git-hooks/prepare-commit-msg

echo "INFO Set core.hooksPath to $HOME/.git-hooks"
git config --global core.hooksPath $HOME/.git-hooks

echo "INFRO Done"
