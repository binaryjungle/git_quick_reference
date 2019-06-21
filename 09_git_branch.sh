#List of all branches in current local repository
git branch

#Create new branch
git branch new_branch_01

#Switching branch
git checkout new_branch_01

#Create and Switch at same time
git checkout -b new_branch_02

#Find what branches are subset of what other branches
#Stay on a branch and execute below command
git branch --merged

#Rename branch
git branch -m old_branch_name new_branch_name

#Delete branch
git branch -d old_branch_name (empty branch or merged branch)
git branch -D old_branch_name (throw away changes)

#Merging 2 branches
#Stay were changes needs to be brought in
git merge new_branch_01 #no new commits or new SHA_ID can be seen
git merge --no-ff new_branch_01 #new commits and new SHA_ID will be created
git merge --ff-only new_branch_01 #do the merge only if fast-forward is possible
git merge --abort

#Creates new branch out from remote branch
git branch new_branch_02 github/new_branch_02
git checkout -b new_branch_02 github/new_branch_02
