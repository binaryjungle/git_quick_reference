#Shows all log of entire project
git log
git log branch_name

#Shows lastly committed changes
git log HEAD

#Shows last n commits
git log -n 1

#Shows commits from some date or till some date or using combination of both
git log --since=2018-01-01
git log --until=2018-01-01
git log --since=2018-01-01 --until=2018-01-31

#Shows commits by specific author
git log --author=first_name
git log --author="name"

#Shows commits by any search words
git log --grep="anything"

#Shows shorter results of commits
#Frequently used
git log --oneline
git log --oneline -5
#Seldom used
git log --format=oneline
git log --format=short
git log --format=medium
git log --format=full
git log --format=fuller
git log --format=email
git log --format=raw

#Log of changes between one commit and another commit
git log OLD_SHA_ID..NEW_SHA_ID #Seldom used

#Log of changes to a particular file
#Frequently used
#Log of changes to a particular file since the beginning
git log file_name_01.txt
#Log of changes to a particular file between 2 commmits
git log OLD_SHA_ID..NEW_SHA_ID file_name_01.txt
#Log of changes to a particular file from a particular commit
git log SHA_ID.. file_name_01.txt
#Seldom used
git log -p file_name_01.txt
git log --graph
git log --oneline --graph --all --decorate

#Shows commits and diffs of all changes to all files
#Seldom used
git show COMMIT_SHA_ID
#Frequently used
git show COMMIT_SHA_ID:file_name_01.txt
git show BLOB_SHA_ID

#List of objects in a particular commit
#Frequently used
git diff-tree --no-commit-id --name-only -r ece90d8a7bd098b56f0d415ed234a595fbeebf65
git show --name-only --pretty="" ece90d8a7bd098b56f0d415ed234a595fbeebf65
