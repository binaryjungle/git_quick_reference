#Intializes the git repository for new project
git init

#Check the status of working directory and staging index against repository
git status

#Add files to staging index
# 1. Add all untracked files
git add .
git add --all

# 2. Add specific file(s) separated by space
git add file_name_01.txt file_name_02.txt

#Remove file from working directory and from git repository
git rm file_name_01.txt

#Rename file from working directory and from git repository
git mv old_file_name.txt new_file_name.txt

#Various committing options
# 1. Add and commit at the same time
git commit -am "message"
# 2. Commit with a message (used often)
git commit -m "message"
# 3. Amend lastly committed changes with new changes or message amendments
git commit --amend -m "message"
# 4. Commit with message editing in a text editor
git commit -e
# 5. Edit messages of already committed changes
git commit -c SHA_ID
