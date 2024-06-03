# `git cherry-pick`

Basic function of `git cherry-pick` is taking a commit and placing it on other branch.

```sh
git checkout practice/cherry-pick
git checkout -b practice/cherry-pick-local
git log
git cherry-pick 229d377b3da7eead55a31e12f067f3224d9960bb
git log
```

---

# Read more
- [Git cherry-pick - Official docs](https://git-scm.com/docs/git-cherry-pick)
