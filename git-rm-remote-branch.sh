#!/bin/sh

DELETE_BRANCH_FILE=$1
if [ ! -f "$DELETE_BRANCH_FILE" ]; then
    echo "The file $DELETE_BRANCH_FILE does not exist"
    exit 1
fi

DELETE_BRANCHES=`cat $DELETE_BRANCH_FILE | xargs`

for branch in $DELETE_BRANCHES
do
    push_args=`echo $branch | awk -F '/' '{print $1 " :" substr($0, index($0, $2))}'`
    cmd="git push $push_args"
    echo $cmd
done
