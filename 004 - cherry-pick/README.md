# `git cherry-pick`

Basic function of `git cherry-pick` is taking a commit and placing it on other branch.

```sh
echo '----- switch to branch "practice/cherry-pick" -----'
git checkout practice/cherry-pick
echo '----- copy current branch to "practice/cherry-pick-local" -----'
git checkout -b practice/cherry-pick-local
echo '----- list commits before cherry-pick -----'
git log
echo '----- cherry-pick -----'
git cherry-pick 229d377b3da7eead55a31e12f067f3224d9960bb
echo '----- list commits after cherry-pick -----'
git log
```

---

# Read more
- [Git cherry-pick - Official docs](https://git-scm.com/docs/git-cherry-pick)
