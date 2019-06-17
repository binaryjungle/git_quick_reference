#Lists all the untracked files in the working directory
git clean -n

#Deletes all the untracked files in the working directory
git clean -f

#Make tracked file to untracked file
git rm --cached file_name_01.txt
