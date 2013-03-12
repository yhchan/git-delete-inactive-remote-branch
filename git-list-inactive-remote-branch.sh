#!/bin/sh

SINCE=$1
if [ -z "$SINCE" ]; then
    echo "You need to specify expired date, see git log --since"
    exit 1
fi

REMOTE_BRANCHES=`git branch -a | grep remotes | cut -c 3- | xargs`

for branch in $REMOTE_BRANCHES
do
    commit=`git log --since="$SINCE" $branch`
    if [ -z "$commit" ]; then
       remote=`echo $branch | cut -c 9-`
       echo $remote
    fi
done
