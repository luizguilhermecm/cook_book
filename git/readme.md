
### HEAD and head (component of .git dir)

HEAD is a pointer that points to the current branch. A repository only has 1 active HEAD.
head is a pointer that points to any commit. A repository can have any number of heads.

### Stages of Git

*Modified* Changes have been made to a file but file has not been committed to Git Database yet
*Staged* Marks a modified file to go into your next commit snapshot
*Committed* Files have been committed to the Git Database

### git grep

search inside repositoy, below: look for the word 'for' in files '*.sh'

`git grep 'for' -- '*.sh'`
