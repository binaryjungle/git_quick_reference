#See the difference between changes of all modified files in working directory against repository
git diff

#See the difference between changes of only specified file in working directory against repository
git diff file_name_01.txt

#See the difference between changes in staging index against repository
git diff --staged
git diff --cached
git diff --staged file_name_01.txt
git diff --cached file_name_01.txt

(within less pager) -S (wrap or unwrap lines)

#See the difference between changes and colour words that got changed
git diff --color-words

#Difference between old commit and current working directory
git diff SHA_ID file_name_01.txt
git diff OLD_SHA_ID..NEW_SHA_ID file_name_01.txt

#Ignore changes on space
git diff --ignore-space-change file_name_01.txt | git diff -b file_name_01.txt
git diff --ignore-all-space file_name_01.txt | git diff -w file_name_01.txt

#Difference between 2 branches
git diff new_branch_01..new_branch_02
