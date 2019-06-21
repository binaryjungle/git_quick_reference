git stash save "message"
git stash list
git stash show stash@{0}
git stash show -p stash@{0}
git stash pop stash@{0}
git stash apply stash@{0} #leaves a copy in stash
git stash drop stash@{0}
git stash clear
