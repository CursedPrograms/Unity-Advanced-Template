@echo off
echo Adding the remote repository 'experimental'...
git remote add experimental https://github.com/CursedPrograms/ExperimentalShaders.git

echo Fetching from 'experimental'...
git fetch experimental

echo Checking out the 'main' branch...
git checkout main

echo Merging 'experimental/main' into 'main' with unrelated histories allowed...
git merge experimental/main --allow-unrelated-histories

echo Committing the merge...
git commit -m "Merged from ExperimentalShaders repository"

echo Process complete!
pause
