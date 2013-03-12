# Description
Shell scripts lists and delete all unactive remote branches by using "--since" syntax (see git log) 

# Usage
    sh git-list-inactive-remote-branch.sh > inactive-branch
    sh git-rm-remote-branch.sh inactive-branch

# Note
    - NO TEST
    - We only print out the git push command (no execute it), so it doesn't hurt.
