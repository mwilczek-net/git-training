# git commit --amend

I’ve just made a commit, but I need to edit it 😱

## Change files

Simply edit files. Add changes like when we want to create new commit. Commit with `—amend`.

As a result, last commit contains all added changes.

```sh
echo "My change to file" >> FILE_TO_BE_CHANGED.txt
git add .
git commit --amend
```

## Change author

Usefull when we forgot to set correct author in configuration, or we commit things on other machine.

```sh
# set custom author
git commit --amend --author "New Author <new.author@null.com>"

# ---- OR ---- #

# configure author
git config user.name "New Author"
git config user.email "new.author@null.com"

# set currently configured author
git comfig --amend --reset-author

---

# Read more
- [Git Commit - Official docs](https://git-scm.com/docs/git-commit)