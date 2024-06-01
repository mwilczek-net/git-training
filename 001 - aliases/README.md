# Aliases

Git supports few automation mechanisms:

- Aliases
  - long static comand has a name
  - shell script with logic has a name
- Hooks - do something on an event

Here we focus on aliases. Especially, that we can use them as a simple precaution.

**Alias can call another alias**

## Configure

### Global

File: `~/.gitconfig`
```ini
[alias]
    backup = branch --force backup
    lol = log --graph --decorate --pretty=oneline --abbrev-commit
    current-branch = "symbolic-ref --short HEAD"
    merge-dev = "!f() { CURRENT_BRANCH_NAME=\"$(git current-branch)\"; echo \"Executing git merge-dev for branch: ${CURRENT_BRANCH_NAME}\"; echo \"Removing branch dev\"; git branch -D dev; echo \"Backuping branch: ${CURRENT_BRANCH_NAME}\" && git backup && echo \"Fetching\" && git fetch --prune && echo \"Pulling origin qa to branch: ${CURRENT_BRANCH_NAME}\" && git pull origin qa && echo \"Pushing branch: ${CURRENT_BRANCH_NAME}\" && git push && echo \"Checkingout dev\" && git checkout dev && echo \"Merging ${CURRENT_BRANCH_NAME}\\ to dev\" && git merge \"${CURRENT_BRANCH_NAME}\" && echo \"Pushing dev\" && git push && echo \"Going back to branch: ${CURRENT_BRANCH_NAME}\" && git checkout \"${CURRENT_BRANCH_NAME}\" ; }; f"
```

Manual
```sh
git config --global alias.backup "branch --force backup"
```

### Repo-local

File: `[REPO_PATH]/.git/config`
```ini
[alias]
    backup = branch --force backup
    lol = log --graph --decorate --pretty=oneline --abbrev-commit
    current-branch = "symbolic-ref --short HEAD"
```

Manual
```sh
cd "${REPO_PATH}"
git config alias.backup "branch --force backup"
```

### Shell script long example:

To execute shell script wrap it with function, and call it. But remember about escaping quotations!
```
merge-dev = "!f() { echo \"my script\" ; }; f"
```

```sh
!f() {
    CURRENT_BRANCH_NAME="$(git current-branch)";
    echo "Executing git merge-dev for branch: ${CURRENT_BRANCH_NAME}"
    echo "Removing branch dev";
    git branch -D dev;
    echo "Backuping branch: ${CURRENT_BRANCH_NAME}" \
        && git backup \
        && echo "Fetching" \
        && git fetch --prune \
        && echo "Pulling origin qa to branch: ${CURRENT_BRANCH_NAME}" \
        && git pull origin qa \
        && echo "Pushing branch: ${CURRENT_BRANCH_NAME}"
        && git push \
        && echo "Checkingout dev" \
        && git checkout dev \
        && echo "Merging ${CURRENT_BRANCH_NAME} to dev" \
        && git merge "${CURRENT_BRANCH_NAME}" \
        && echo "Pushing dev" \
        && git push \
        && echo "Going back to branch: ${CURRENT_BRANCH_NAME}" \
        && git checkout "${CURRENT_BRANCH_NAME}" ;
};
f"
```

# Read more
- [Git Aliases - Official docs](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)
- [Git Config - Official docs](https://git-scm.com/docs/git-config)