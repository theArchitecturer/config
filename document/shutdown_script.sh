#!/bin/bash

git add ~/.config/nvim/
git commit -m "update"
git push -u origin master

xfce4-session-logout --halt
