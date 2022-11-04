#!/usr/bin/env bash

# mkdir 17
# cd 17
git init
touch f1
git add f1
git commit -m "c 1 en master"
touch f2
git add f2
git commit -m "c 2 en master"
git checkout -b feature
git checkout master
touch f3
git add f3
git commit -m "c 3 en master"
git --no-pager log --oneline --graph
git checkout feature
touch change1
git add change1
git commit -m "c 1 en feature"
touch change2
git add change2
git commit -m "c 2 en feature"
# git rebase master #esto aplana el historial pero los dos commits de la rama feature pasarán a tener otro hash!
# git checkout master
# git merge feature
