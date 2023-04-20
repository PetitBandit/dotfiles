#!/bin/sh
TYPE=$(gum choose "fix" "feat")
BASE_BRANCH=$(gum choose "develop" "staging" "master")
NUMBER=$(gum input --placeholder "branch number")

gum confirm "create this branch $TYPE/MAIIAPRO-$NUMBER from $BASE_BRANCH?" && git checkout $BASE_BRANCH git pull origin $BASE_BRANCH yarn git checkout -b "$TYPE/MAIIAPRO-$NUMBER"




