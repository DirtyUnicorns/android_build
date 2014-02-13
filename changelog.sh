#!/bin/bash

# To run this, simply cd to the DU folder and run:

# . build/changelog.sh :) *After syncing the repo.*

_now=$(date +"%m-%d-%Y")
_file=build/DUChangelogs/$_now/DirtyUnicorns-Changelog-$_now.txt

mkdir -p build/DUChangelogs/

mkdir -p build/DUChangelogs/$_now

chmod 777 -R build/DUChangelogs

repo forall -pc git log --reverse --no-merges --since=1.day.ago >  $_file
