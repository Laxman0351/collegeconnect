@echo off
echo ============================================================
echo 🚀 College Connect Automated GitHub & Cloud Deployment Script
echo ============================================================
echo.

git init
git add .
git commit -m "Deploy College Connect: React + Express + Neon PostgreSQL"
git branch -M main

echo.
echo Please enter your GitHub Repository URL (e.g. https://github.com/username/college-connect.git):
set /p REPO_URL=

if not "%REPO_URL%"=="" (
    git remote add origin %REPO_URL%
    git push -u origin main
    echo.
    echo ✅ Repository successfully pushed to GitHub!
    echo ⚡ GitHub Actions CI/CD and Render/Vercel automatic deployment triggered!
) else (
    echo ⚠️ No GitHub URL provided. You can run 'git push' manually later.
)

pause
