@echo off
echo GitHub Push and Merge Script
echo ============================
echo.

if "%1"=="" (
    echo Usage: push-and-merge.bat YOUR_GITHUB_TOKEN
    echo.
    echo This script will:
    echo 1. Push main branch to GitHub
    echo 2. Push feature branch to GitHub  
    echo 3. Merge feature branch into main locally
    echo 4. Push the merged main branch
    echo.
    exit /b 1
)

set GITHUB_TOKEN=%1
set GITHUB_USERNAME=rgslaughterjr
set REPO_NAME=cc_in_action

echo Step 1: Pushing main branch to GitHub...
git checkout main
git push https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git main

if %ERRORLEVEL% NEQ 0 (
    echo Failed to push main branch. 
    echo Please create the repository on GitHub first at:
    echo https://github.com/new
    echo Repository name: cc_in_action
    pause
    exit /b 1
)

echo.
echo Step 2: Pushing feature branch to GitHub...
git push https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git feature/claude-pr-assistance

if %ERRORLEVEL% NEQ 0 (
    echo Failed to push feature branch.
    exit /b 1
)

echo.
echo Step 3: Merging feature branch into main locally...
git checkout main
git merge feature/claude-pr-assistance -m "Merge pull request: Add Claude PR assistance integration"

if %ERRORLEVEL% NEQ 0 (
    echo Failed to merge branches.
    exit /b 1
)

echo.
echo Step 4: Pushing merged main branch to GitHub...
git push https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo SUCCESS! Claude PR assistance has been merged!
    echo ========================================
    echo.
    echo Your repository is now configured with:
    echo - Claude PR templates
    echo - Automated code review workflows
    echo - Interactive AI assistance
    echo.
    echo Repository URL: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
    echo.
    echo Next steps:
    echo 1. Add ANTHROPIC_API_KEY to GitHub Secrets
    echo 2. Create a test PR to see Claude in action
    echo.
    
    REM Clean up - delete the feature branch locally
    git branch -d feature/claude-pr-assistance
    
    REM Remove token from remote URL for security
    git remote set-url origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
) else (
    echo.
    echo Push failed. Please check your connection and try again.
)