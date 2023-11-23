#!/bin/bash
# Target directory
TARGET=$2

if [ -z "$TARGET" ]
then
    TARGET="git_last_commit_package"
fi

behingCommit=$1
if [ -z "$behingCommit" ]
then
    behingCommit="0"
fi
echo "Finding and copying files and folders of the last $behingCommit commit(s) to target directory";

for i in $(git diff --name-only HEAD~$behingCommit)
    do
        # First create the target directory, if it doesn't exist.
        mkdir -p "$TARGET/$(dirname $i)"
         # Then copy over the file.
        cp "$i" "$TARGET/$i"
    done
echo "Files copied to target directory";
