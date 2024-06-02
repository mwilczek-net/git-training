# git reflog

> Holy Moly! I’ve just deleted a branch / tag / commit or screwed amending / rebasing / merging, etc. 💩

Good option to avoid panic in such situations is to use `git backup` before any potentially dangerous situations (described in [001 - aliases](../001%20-%20aliases)). Unfortunately, it can’t cover all cases.

Good news: `git` remembers commits, even if there are not on any branch or tag. Bad news: git cleans those commits from time to time, but it depends on configuration. Read more about cleaning strategy in both [reflog](https://git-scm.com/docs/git-reflog) and [garbage collector](https://git-scm.com/docs/git-gc) docs)

---

# Read more
- [Git Reflog - Official docs](https://git-scm.com/docs/git-reflog)
- [Git Log - Official docs](https://git-scm.com/docs/git-log)
- [Garbage collector](https://git-scm.com/docs/git-gc)
