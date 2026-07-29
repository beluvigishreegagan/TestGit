# Git Commands Reference

This README is a practical Git command guide with syntax, explanation, and examples.
Use these commands in PowerShell, Command Prompt, Git Bash, or any terminal.

## 1) Check Git Installation and Version

1. git --version
	What it does: Shows the installed Git version.
	Example: git --version

## 2) Initial Setup (One Time)

1. git config --global user.name "Your Name"
	What it does: Sets your commit author name globally.
	Example: git config --global user.name "Shree Gagana"

2. git config --global user.email "you@example.com"
	What it does: Sets your commit author email globally.
	Example: git config --global user.email "gagana@example.com"

3. git config --global init.defaultBranch main
	What it does: Makes main the default branch for new repositories.
	Example: git config --global init.defaultBranch main

4. git config --global core.editor "code --wait"
	What it does: Sets Visual Studio Code as default editor for Git messages.
	Example: git config --global core.editor "code --wait"

5. git config --list
	What it does: Lists active Git configuration values.
	Example: git config --list

6. git config --global alias.st status
	What it does: Creates an alias so git st runs git status.
	Example: git config --global alias.st status

## 3) Create or Get a Repository

1. git init
	What it does: Creates a new Git repository in the current folder.
	Example: git init

2. git clone <url>
	What it does: Downloads a remote repository.
	Example: git clone https://github.com/user/project.git

3. git clone <url> <folder>
	What it does: Clones into a custom folder name.
	Example: git clone https://github.com/user/project.git my-project

## 4) Daily Status and File Tracking

1. git status
	What it does: Shows staged, unstaged, and untracked changes.
	Example: git status

2. git status -sb
	What it does: Short status plus branch tracking info.
	Example: git status -sb

3. git add <file>
	What it does: Stages one file for next commit.
	Example: git add README.md

4. git add .
	What it does: Stages all changes from current folder down.
	Example: git add .

5. git add -A
	What it does: Stages all changes (new, modified, deleted) in repository.
	Example: git add -A

6. git rm <file>
	What it does: Removes file from working tree and stages deletion.
	Example: git rm old-notes.txt

7. git rm --cached <file>
	What it does: Stops tracking file but keeps it on disk.
	Example: git rm --cached secrets.env

8. git mv <old> <new>
	What it does: Renames/moves file and stages the move.
	Example: git mv app.txt app.md

## 5) Commit Changes

1. git commit -m "message"
	What it does: Creates a commit from staged changes.
	Example: git commit -m "Add login validation"

2. git commit -am "message"
	What it does: Stages and commits tracked file changes only.
	Example: git commit -am "Fix typo in README"

3. git commit --amend
	What it does: Edits last commit (message and/or staged content).
	Example: git commit --amend -m "Correct previous commit message"

4. git commit --amend --no-edit
	What it does: Adds staged changes to last commit without editing message.
	Example: git commit --amend --no-edit

## 6) View History

1. git log
	What it does: Full commit history.
	Example: git log

2. git log --oneline
	What it does: Compact one-line history.
	Example: git log --oneline

3. git log --oneline --graph --decorate --all
	What it does: Visual graph of all branches with labels.
	Example: git log --oneline --graph --decorate --all

4. git show <commit>
	What it does: Shows commit details and patch.
	Example: git show a1b2c3d

5. git blame <file>
	What it does: Shows who changed each line and when.
	Example: git blame README.md

## 7) Compare Changes

1. git diff
	What it does: Shows unstaged changes.
	Example: git diff

2. git diff --staged
	What it does: Shows staged changes.
	Example: git diff --staged

3. git diff <branch1> <branch2>
	What it does: Compares two branches.
	Example: git diff main feature/login

4. git diff <commit1> <commit2>
	What it does: Compares two commits.
	Example: git diff a1b2c3d d4e5f6g

## 8) Branching

1. git branch
	What it does: Lists local branches.
	Example: git branch

2. git branch -a
	What it does: Lists local and remote branches.
	Example: git branch -a

3. git branch <name>
	What it does: Creates a new branch.
	Example: git branch feature/profile

4. git switch <name>
	What it does: Switches to an existing branch.
	Example: git switch main

5. git switch -c <name>
	What it does: Creates and switches to a new branch.
	Example: git switch -c feature/search

6. git checkout <name>
	What it does: Legacy command to switch branches.
	Example: git checkout feature/search

7. git checkout -b <name>
	What it does: Legacy command to create and switch branch.
	Example: git checkout -b hotfix/login-bug

8. git branch -d <name>
	What it does: Deletes a fully merged branch.
	Example: git branch -d feature/search

9. git branch -D <name>
	What it does: Force deletes branch even if not merged.
	Example: git branch -D old-experiment

## 9) Merge and Rebase

1. git merge <branch>
	What it does: Merges target branch into current branch.
	Example: git merge feature/search

2. git merge --no-ff <branch>
	What it does: Forces a merge commit (no fast-forward).
	Example: git merge --no-ff feature/search

3. git merge --abort
	What it does: Cancels merge and returns to pre-merge state.
	Example: git merge --abort

4. git rebase <branch>
	What it does: Replays current branch commits on top of target branch.
	Example: git rebase main

5. git rebase -i <commit>
	What it does: Interactive rebase to edit, reorder, squash commits.
	Example: git rebase -i HEAD~5

6. git rebase --continue
	What it does: Continues rebase after conflict resolution.
	Example: git rebase --continue

7. git rebase --abort
	What it does: Cancels rebase and restores original branch state.
	Example: git rebase --abort

## 10) Work with Remote Repositories

1. git remote -v
	What it does: Lists remotes and URLs.
	Example: git remote -v

2. git remote add origin <url>
	What it does: Adds a remote called origin.
	Example: git remote add origin https://github.com/user/project.git

3. git remote set-url origin <url>
	What it does: Changes origin URL.
	Example: git remote set-url origin https://github.com/user/new-project.git

4. git fetch
	What it does: Downloads remote updates without merging.
	Example: git fetch

5. git fetch --all --prune
	What it does: Fetches all remotes and deletes stale remote-tracking refs.
	Example: git fetch --all --prune

6. git pull
	What it does: Fetches then merges remote branch into current branch.
	Example: git pull

7. git pull --rebase
	What it does: Fetches then rebases local commits on top of remote branch.
	Example: git pull --rebase

8. git push
	What it does: Pushes current branch commits to upstream.
	Example: git push

9. git push -u origin <branch>
	What it does: Pushes branch and sets upstream tracking.
	Example: git push -u origin main

10. git push --force-with-lease
	 What it does: Safe force push that fails if remote changed unexpectedly.
	 Example: git push --force-with-lease

11. git push origin --delete <branch>
	 What it does: Deletes remote branch.
	 Example: git push origin --delete feature/old

## 11) Tagging Releases

1. git tag
	What it does: Lists tags.
	Example: git tag

2. git tag <tag>
	What it does: Creates lightweight tag.
	Example: git tag v1.0.0

3. git tag -a <tag> -m "message"
	What it does: Creates annotated tag with message.
	Example: git tag -a v1.0.0 -m "First release"

4. git push origin <tag>
	What it does: Pushes one tag.
	Example: git push origin v1.0.0

5. git push origin --tags
	What it does: Pushes all local tags.
	Example: git push origin --tags

6. git tag -d <tag>
	What it does: Deletes local tag.
	Example: git tag -d v1.0.0

7. git push origin :refs/tags/<tag>
	What it does: Deletes remote tag.
	Example: git push origin :refs/tags/v1.0.0

## 12) Stash Temporary Work

1. git stash
	What it does: Stashes tracked file changes.
	Example: git stash

2. git stash -u
	What it does: Stashes tracked and untracked files.
	Example: git stash -u

3. git stash list
	What it does: Shows all stashes.
	Example: git stash list

4. git stash show -p stash@{0}
	What it does: Shows full patch of a stash entry.
	Example: git stash show -p stash@{0}

5. git stash apply stash@{0}
	What it does: Applies stash without removing it from stash list.
	Example: git stash apply stash@{0}

6. git stash pop
	What it does: Applies latest stash and removes it from stash list.
	Example: git stash pop

7. git stash drop stash@{0}
	What it does: Deletes one stash entry.
	Example: git stash drop stash@{0}

8. git stash clear
	What it does: Deletes all stash entries.
	Example: git stash clear

## 13) Undo and Recovery

1. git restore <file>
	What it does: Discards unstaged changes in file.
	Example: git restore README.md

2. git restore --staged <file>
	What it does: Unstages file while keeping working changes.
	Example: git restore --staged README.md

3. git checkout -- <file>
	What it does: Legacy way to discard local file changes.
	Example: git checkout -- README.md

4. git reset --soft HEAD~1
	What it does: Moves HEAD back one commit, keeps changes staged.
	Example: git reset --soft HEAD~1

5. git reset --mixed HEAD~1
	What it does: Moves HEAD back one commit, unstages changes.
	Example: git reset --mixed HEAD~1

6. git reset --hard HEAD~1
	What it does: Moves HEAD back one commit and discards changes.
	Example: git reset --hard HEAD~1

7. git revert <commit>
	What it does: Creates a new commit that reverses a given commit.
	Example: git revert a1b2c3d

8. git reflog
	What it does: Shows movement history of HEAD and branch refs.
	Example: git reflog

9. git reset --hard <reflog-id>
	What it does: Recovers previous repository state using reflog entry.
	Example: git reset --hard HEAD@{2}

## 14) Cherry-Pick Specific Commits

1. git cherry-pick <commit>
	What it does: Applies one commit from another branch to current branch.
	Example: git cherry-pick f62e433

2. git cherry-pick <start>^..<end>
	What it does: Cherry-picks a commit range.
	Example: git cherry-pick a1b2c3d^..d4e5f6g

3. git cherry-pick --abort
	What it does: Cancels cherry-pick sequence.
	Example: git cherry-pick --abort

## 15) Clean Untracked Files

1. git clean -n
	What it does: Dry-run for files that would be removed.
	Example: git clean -n

2. git clean -f
	What it does: Deletes untracked files.
	Example: git clean -f

3. git clean -fd
	What it does: Deletes untracked files and folders.
	Example: git clean -fd

4. git clean -fdx
	What it does: Deletes untracked files, folders, and ignored files.
	Example: git clean -fdx

## 16) Inspect Objects and References

1. git ls-files
	What it does: Lists tracked files in index.
	Example: git ls-files

2. git ls-remote origin
	What it does: Lists refs available on remote.
	Example: git ls-remote origin

3. git rev-parse HEAD
	What it does: Prints exact commit hash of HEAD.
	Example: git rev-parse HEAD

4. git cat-file -p <object>
	What it does: Prints low-level Git object content.
	Example: git cat-file -p HEAD^{tree}

## 17) Search and Debug History

1. git grep "text"
	What it does: Searches tracked files for text.
	Example: git grep "TODO"

2. git bisect start
	What it does: Starts binary search for bad commit.
	Example: git bisect start

3. git bisect bad
	What it does: Marks current commit as bad.
	Example: git bisect bad

4. git bisect good <commit>
	What it does: Marks known good commit.
	Example: git bisect good a1b2c3d

5. git bisect reset
	What it does: Ends bisect and returns to original branch.
	Example: git bisect reset

## 18) Submodules

1. git submodule add <url> <path>
	What it does: Adds another repository as submodule.
	Example: git submodule add https://github.com/user/lib.git libs/lib

2. git submodule update --init --recursive
	What it does: Initializes and updates submodules.
	Example: git submodule update --init --recursive

3. git submodule foreach git pull origin main
	What it does: Runs pull in each submodule.
	Example: git submodule foreach git pull origin main

## 19) Worktrees (Multiple Working Directories)

1. git worktree list
	What it does: Lists linked working trees.
	Example: git worktree list

2. git worktree add ../repo-feature feature/checkout
	What it does: Creates new folder checked out at branch.
	Example: git worktree add ../TestGit-feature feature/checkout

3. git worktree remove ../repo-feature
	What it does: Removes a linked worktree.
	Example: git worktree remove ../TestGit-feature

## 20) Archive and Bundle

1. git archive --format=zip --output=release.zip HEAD
	What it does: Creates a zip of current project state.
	Example: git archive --format=zip --output=release.zip HEAD

2. git bundle create repo.bundle --all
	What it does: Exports repository history to one file.
	Example: git bundle create backup.bundle --all

3. git clone repo.bundle cloned-repo
	What it does: Clones from bundle file.
	Example: git clone backup.bundle restored-repo

## 21) Useful .gitignore Workflow

1. Create .gitignore file
	What it does: Tells Git which files/folders to ignore.
	Example entries:
	node_modules/
	.env
	dist/
	*.log

2. git rm --cached -r .
	What it does: Untracks all files so ignore rules can be reapplied.
	Example: git rm --cached -r .

3. git add .
	What it does: Re-stage files according to new ignore rules.
	Example: git add .

4. git commit -m "Apply .gitignore rules"
	What it does: Saves tracking cleanup.
	Example: git commit -m "Apply .gitignore rules"

## 22) End-to-End Example Workflow

1. git clone https://github.com/user/project.git
2. git switch -c feature/login
3. git add .
4. git commit -m "Implement login API"
5. git push -u origin feature/login
6. git switch main
7. git pull
8. git merge feature/login
9. git push

Explanation:
- Steps 1 to 5 create and publish a feature branch.
- Steps 6 to 9 update main, merge feature, and publish merged result.

## 23) Safety Tips

1. Prefer git push --force-with-lease over git push --force.
2. Use git status before commit, pull, merge, rebase, reset, and push.
3. Use git clean -n before git clean -fd.
4. Use git reflog to recover from accidental reset/rebase.
5. Use small commits with clear messages.

## 24) Quick Command Map by Task

1. Start a repo: git init, git clone
2. Save work: git add, git commit
3. Share work: git push, git pull, git fetch
4. Branch work: git switch -c, git merge, git rebase
5. Undo safely: git restore, git revert, git reflog
6. Temporary save: git stash
7. Cleanup: git branch -d, git clean -n, git clean -fd

This guide covers the most important Git commands used in real projects, with examples and explanations for each.
