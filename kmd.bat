title kmd

doskey d=dir $*
doskey ll=dir $*
doskey gs=git status $*
doskey gst=git stash $*
doskey gb=git branch $*
doskey ga=git add $*
doskey gc=git commit $*
doskey gch=git checkout $*
doskey gd=git diff $*
doskey gl=git log $*
doskey gu=git pull $*
doskey gp=git push $*
doskey gr=git remote $*
doskey gg=git branch -v ^&^& git status $*
doskey ggg=git branch -v ^&^& git branch -r ^&^& git status $*
doskey gfa=git fetch --all $*
doskey grpo=git remote prune origin $*

cmd /k "C:\Program Files\Git\git-cmd.exe"
