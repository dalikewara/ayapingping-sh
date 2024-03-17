#!/bin/sh

commit_message=$1

if [ "$commit_message" = "" ] || [ "$commit_message" = " " ]; then
  commit_message="update some scripts"
fi

git add .
git commit -m "$commit_message"
git push origin master
