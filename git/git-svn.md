# git svn

svn remote repository used to perform teste [assembla](https://www.assembla.com/login)


```
git svn clone SVN_REPO_ROOT_URL [DEST_FOLDER_PATH] -T TRUNK_REPO_PATH -t TAGS_REPO_PATH -b BRANCHES_REPO_PATH
```

If your SVN repository follows the standard layout (trunk, branches, tags folders) you can save some typing:

```
git svn clone -s SVN_REPO_ROOT_URL [DEST_FOLDER_PATH]
```

##Local work

Just use your local git repository as a normal git repo, with the normal git commands

*  `git add FILE` and `git checkout -- FILE` To stage/unstage a file
*  `git commit` To save your changes. Those commits will be local and will not be "pushed" to the SVN repo
*  `git stash` and `git stash pop` Hell yeah! Stashes are back!
*  `git reset HEAD --hard` Revert all your local changes
*  `git log` Access all the history in the repository
*  `git rebase -i` Yep, you can squash all the commits! (as usual be SUPER CAREFULL with this one)
*  `git branch` Yes! you can create local branches! But remember to keep the *history linear*!

##Pushing local changes to SVN

`git svn dcommit --rmdir` will create a SVN commit for each of your local git commits.

`git svn rebase` will sync with remote repo.

[Reference:](http://git-scm.com/book/en/v1/Git-and-Other-Systems-Git-and-Subversion)

[Reference:](https://gist.github.com/rickyah/7bc2de953ce42ba07116)

[Reference:](https://www.viget.com/articles/effectively-using-git-with-subversion)

