# Deletes all gerrit review branches
function gerritclean
    for REVIEW_BRANCH in (git branch -a | grep -oE "review/.*")
        git branch -D $REVIEW_BRANCH
    end
end
