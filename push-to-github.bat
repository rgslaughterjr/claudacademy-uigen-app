@echo off
echo GitHub Push Script with Token Authentication
echo ============================================
echo.

REM Check if token is provided as argument
if "%1"=="" (
    echo Usage: push-to-github.bat YOUR_GITHUB_TOKEN
    echo.
    echo Steps to get your token:
    echo 1. Go to https://github.com/settings/tokens/new
    echo 2. Create a token with 'repo' scope
    echo 3. Copy the token and run this script with it
    exit /b 1
)

set GITHUB_TOKEN=%1
set GITHUB_USERNAME=rgslaughterjr
set REPO_NAME=cc_in_action

echo Setting up authenticated remote...
git remote remove origin 2>nul
git remote add origin https://%GITHUB_USERNAME%:%GITHUB_TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

echo.
echo Pushing to GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Successfully pushed to GitHub!
    echo Repository URL: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
    
    REM Clean up the token from remote URL for security
    git remote set-url origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
    echo.
    echo Token removed from git config for security.
) else (
    echo.
    echo Push failed. Please check your token and try again.
)