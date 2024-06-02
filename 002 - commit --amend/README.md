# `git commit --amend`

I’ve just made a commit, but I need to edit it 😱

## Change files
Change commit message

```sh
git commit --amend
git commit --amend -m "New commit message"
```

## Change files

Simply edit files. Add changes like when we want to create new commit. Commit with `—amend`.

As a result, last commit contains all added changes.

```sh
echo "My change to file" >> FILE_TO_BE_CHANGED.txt
git add .
git commit --amend

# jusst change files, but not a commit message
git commit --amend --no-edit
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
git commit --amend --reset-author

# change author, but not a commit message
git commit --amend --reset-author --no-edit
```

---

# Read more
- [Git Commit - Official docs](https://git-scm.com/docs/git-commit)
