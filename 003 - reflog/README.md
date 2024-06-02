# `git reflog`

> Holy Moly! I’ve just deleted a branch / tag / commit or screwed amending / rebasing / merging, etc. 💩

Good option to avoid panic in such situations is to use `git backup` before any potentially dangerous situations (described in [001 - aliases](../001%20-%20aliases)). Unfortunately, it can’t cover all cases.

Good news: `git` remembers commits, even if there are not on any branch or tag. Bad news: git cleans those commits from time to time, but it depends on configuration. Read more about cleaning strategy in both [reflog](https://git-scm.com/docs/git-reflog) and [garbage collector](https://git-scm.com/docs/git-gc) docs.

## How to use?

`git reflog` shows all commits known for git in given repo. Actually, it is an alias for `git log -g --abbrev-commit --pretty=oneline`. Therefore it accepts the same parameters as `git log`.

`git reflog --pretty=short` displays a bit more details, which makes things harder for scripts, but easier to undrestand what was done in nay commit.


## Where to practice `git reflog`?

There is possibility to play in this repo. Clone it and play with branch `practice/reflog`.

```sh
git clone https://github.com/mwilczek-net/git-training.git
git checkout practice/reflog
# lets play on copy
git checkout -b  practice/reflog-local

# TODO - add some commands
```

---

# Read more
- [Git Reflog - Official docs](https://git-scm.com/docs/git-reflog)
- [Git Log - Official docs](https://git-scm.com/docs/git-log)
- [Garbage collector](https://git-scm.com/docs/git-gc)
