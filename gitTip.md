## **Git Tips**

1 Checkout a single file from another branch

      git checkout some-other-branch --yarn.lock

2 View the log without merge commits

      git log --oneline --no-merges

3 Rewrite your last commit message

      git commit -v--ammend

4 Get rid of all untracked changes

      git clean -f -d

5 Print out a cool visualization of your log

      git log --pretty=oneline --graph --decorate --all

6 Search for commits that include a keyword.

      git log -s"config.menu_items"

7 List all git aliases

      git config -l | grep alias | sed 's|^alias\.//g'

8 View the log for a specific date range

      git log --since='JAN 10 2021'--until='JUL 19 2021'

9 Ask git for a changelog

      git shortlog <commit>.. HEAD

10 Super secret list of git tutorials

      git help -g
