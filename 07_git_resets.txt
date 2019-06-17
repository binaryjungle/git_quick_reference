# 1. *** Frequently Used ***
#Repository to working directory (destructive)
#One step action with one command action. File will be brought to working directory and staging index. No commits required.

git checkout file_name_01.txt #If there are no branch name same as file name
git checkout -- file_name_01.txt #Bare double dash means "stay on Current Branch"

#Bring back specific version of the file to working directory (destructive)
#Two step action with two commands execution.
#File will be brought to working directory and added to staging index. Commit is required
git checkout 0a1b3c4d5e(SHA_ID) -- file_name_01.txt

#Staged to unstage (Seldom used. Grouping of changes in staging index can be done using this command)
git reset HEAD file_name_01.txt #Edits in working directory will be there. Only unstage happens

# 2. *** Less Frequently Used ***
#Undoing commits itself is not so frequent scenario. Commits once made must ideally stay there.
#On occasions when working directory is messed up heavily, we undo commits to bring older state of our working directory.

#Amend lastly committed changes with new changes or message amendments (can be seldom used)
git commit --amend -m "message"

#Revert the provided 0a1b3c4d5e(SHA_ID). Reverts all the changes as part of the provided SHA_ID (destructive)
#Not specific to file.
#Commits will happen and working directory will be clean.
git revert HEAD
git revert 0a1b3c4d5e
git revert -n 0a1b3c4d5e #No commits will happen. We have the option to discard

#Reset the working directory to older state
#HEAD moves. Subsequent changes after OLDSHA will be in staging index and working directory. Diff can be used to verify the difference
git reset --soft OLDSHA
#HEAD moves. Subsequent changes after OLDSHA will only be in working directory. Diff can be used to verify the difference
git reset --mixed OLDSHA
#HEAD moves. Subsequent changes after OLDSHA will be discarded. in staging index. Diff can be used to verify the difference
git reset --hard OLDSHA
