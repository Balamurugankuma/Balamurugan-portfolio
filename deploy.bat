@echo off
REM Portfolio Deployment Script for Windows
REM This script helps you quickly deploy your portfolio to GitHub

echo.
echo ========================================
echo   Portfolio Deployment Helper
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Git is installed
echo.

REM Get repository URL
set /p repo_url="Enter your GitHub repository URL: "

if "%repo_url%"=="" (
    echo ERROR: Repository URL cannot be empty
    echo.
    pause
    exit /b 1
)

echo.
echo Initializing git repository...

REM Initialize git if not already initialized
if not exist .git (
    git init
    echo Git repository initialized
) else (
    echo Git repository already initialized
)

echo.
echo Adding files...
git add .

echo.
echo Creating commit...
git commit -m "Initial commit - Portfolio website"

echo.
echo Adding remote repository...
git remote remove origin 2>nul
git remote add origin "%repo_url%"

echo.
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo   Deployment Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Go to your GitHub repository
echo 2. Click Settings - Pages
echo 3. Select 'main' branch as source
echo 4. Save and wait 2-3 minutes
echo 5. Your site will be live!
echo.
echo Happy coding!
echo.
pause
