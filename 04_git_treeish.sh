#List of all objects and its SHA_ID as of specific commit
git ls-tree HEAD
git ls-tree master
git ls-tree 0a1b2c3d4e

#List of all objects within a folder and its SHA_ID as of specific commit
git ls-tree master folder_current
git ls-tree master^ folder_current_minus_01
git ls-tree master~2 folder_current_minus_02
git ls-tree HEAD~2 folder_current_minus_02
