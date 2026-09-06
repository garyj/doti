push:
    git -C .agents push origin
    git -C chezmoi push origin
    git push origin

out:
    git --no-pager -C .agents out
    git --no-pager -C chezmoi out
    git --no-pager out
