@echo off
REM Prompt for the project directory path
set /p projectDir="Enter the project directory path: "

REM Prompt for the commit message
set /p commitMessage="Enter the commit message: "

REM Prompt for the GitHub repository URL
set /p repoURL="Enter the GitHub repository URL: "

REM Navigate to the project directory
cd /d "%projectDir%"

REM Initialize Git repository
git init

REM Add all files
git add .

REM Commit changes with the provided commit message
git commit -m "%commitMessage%"

REM Set the remote repository with the provided URL
git remote add origin %repoURL%

REM Rename branch to main
git branch -M main

REM Push changes to the GitHub repository
git push -u origin main
