#Lists all remote repositories
git remote

#Lists all remote repositories in detail.
git remote -v

#Initialize remote repositories
git remote add github git@github.com:binaryjungle/git_quick_reference.git

cat .git/config

#Remove remote repository
git remote rm github

#Push local repositories to remote repositories (New)
git push -u github master #-u is for tracking branch
git push github new_branch_01 #Absence of -u is for non-tracking branch

cat .git/config
cat .git/refs/remotes/github/master

git push [github master] #(if it is tracking branch and Updates to be pushed)

#Convert non_tracking branch to tracking branch
git config branch.new_branch_01.remote github
git config branch.new_branch_01.merge refs/heads/master

git branch --set-upstream new_branch_01 github/new_branch_01

#Lists all remote branches
git branch -r #See only remote branches
git branch -a #See all (local and remote) branches

#Clone existing repositories
git clone git@github.com:binaryjungle/git_quick_reference.git new_repository_name (in current directory cloning default branch)
git clone -b new_branch_01 git@github.com:binaryjungle/git_quick_reference.git new_repository_name (in current directory cloning specified branch)


git fetch github
git fetch
git pull  = git fetch + git merge

#Creates new branch out from remote branch
git branch new_branch_02 github/new_branch_02
git checkout -b new_branch_02 github/new_branch_02

#Delete remote branch in github. Local will not be impacted
git push github :new_branch_02
git push github --delete new_branch_02
