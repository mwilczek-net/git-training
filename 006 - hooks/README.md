# Git Hooks

Git Hooks are method of running custom scripts as result for an action.

Official documentation divide Git Hooks into two main groups:
- Client-side - triggered mainly by any commit related operations
- Server-side - in most cases related to network operations (remote actions)

## How to start

Sample hooks are located in repository: `.git/hooks`. All samples has `.sample` file name extension.

Each `.sample` file contains description and sample code.

Hook name should be without `.sample` suffix, and file must be executable.

## How can it be used

Some examples that are used in real projects.

- Before commit checks
  - Linter
  - Unit tests
- After commit checks
  - All commits contains task ID in message (except merging commits)
- Prepare commit message
  - Task ID is added to commit mesage. Works with `git commit -m`, and most GUIs

---

# Read more
- [Customizing Git - Git Hooks - Official book](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
