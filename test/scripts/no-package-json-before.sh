#!/bin/sh

# create a repo where a package.json is added in a branch

# setup new git repo
git init --initial-branch=main
# needed for git run in CI context where none of this is set
git config --local user.email "you@example.com"
git config --local user.name "Your Name"

echo "hello" > file
git add file
git commit -a -m "initial commit"

# add package.json in new branch
git checkout -b branch
echo '{ "name": "test-project" }' > package.json
git add package.json
git commit -a -m "add package.json"
