# Recommenders

This repository contains the authors code, notebooks, and general work while studying recommender systems.

---

# Git Workflow

The two key branches of this repository are `main` and `develop`. The `main` branch is considered the "production" branch and is firewalled from direct pushes. All changes to `main` must come from merges via `develop`.

`develop` is the "staging" branch and is used to test out whether features and changes work as intended in within the larger code base. `develop` can be pushed to directly, but this is only used for rebasing the develop branch after merging features/changes from other branches.

`feature-*` branches are individual branches used to create modular features and changes. The programmer should be doing all writing and testing on these branches first, then merging to develop once they believe the features and changes are complete.

The general workflow for creating a new feature `my_feature` is this:

0) Pull the most recent copies of `main` and `develop` onto the local repository.
```
$ git checkout main
$ git pull origin main
$ git checkout develop
$ git pull origin develop
```

1) Create and checkout a new branch `feature-my_feature` **based off of the `develop` branch**.
```
$ git checkout -b feature-my_feature develop
```

2) Write all necessary code and make all necessary changes to create the new feature. Make all necessary commits to the branch `feature-my_feature`.

3) Once the feature is ready to deploy, push the branch `feature-my_feature` up to remote.

4) Submit a pull request to merge `feature-my_feature` into `develop`.

5) Once the `develop` branch has been determined to be production ready, merge `develop` into `main`.

6) Since the merge counts as a new commit on `main`, the `develop` branch will technically be 1 commit behind `main`. We can "fast forward" `develop` to sync with `main` by merging `main` back into develop.
```
$ git checkout main
$ git pull origin main
$ git checkout develop
$ git merge main
```