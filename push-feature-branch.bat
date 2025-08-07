@echo off
echo GitHub Feature Branch Push Script
echo ==================================
echo.

REM Check if token is provided
if "%1"=="" (
    echo Usage: push-feature-branch.bat YOUR_GITHUB_TOKEN
    echo.
    echo This will push the feature/claude-pr-assistance branch
    exit /b 1
)

set GITHUB_TOKEN=%1
set GITHUB_USERNAME=rgslaughterjr
set REPO_NAME=cc_in_action
set BRANCH_NAME=feature/claude-pr-assistance

echo Pushing feature branch to GitHub...
git push https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git %BRANCH_NAME%

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Successfully pushed feature branch!
    echo.
    echo Now you can create a pull request at:
    echo https://github.com/%GITHUB_USERNAME%/%REPO_NAME%/compare/main...%BRANCH_NAME%
) else (
    echo.
    echo Push failed. Please check your token and try again.
)