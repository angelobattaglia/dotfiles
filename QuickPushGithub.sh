#!/bin/sh

echo "
#####################
#####################
Automated push to GitHub
#####################
#####################
"

git add . && git commit -a -m "Update" && git push origin master


