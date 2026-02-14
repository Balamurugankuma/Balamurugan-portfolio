#!/bin/bash

# Portfolio Deployment Script
# This script helps you quickly deploy your portfolio to GitHub

echo "🚀 Portfolio Deployment Helper"
echo "================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   - Windows: https://git-scm.com/download/win"
    echo "   - Mac: brew install git"
    echo "   - Linux: sudo apt-get install git"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get repository URL
echo "📝 Please enter your GitHub repository URL"
echo "   Example: https://github.com/Balamurugankuma/portfolio.git"
read -p "Repository URL: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ Repository URL cannot be empty"
    exit 1
fi

echo ""
echo "🔧 Initializing git repository..."

# Initialize git if not already initialized
if [ ! -d .git ]; then
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "📦 Adding files..."
git add .

echo ""
echo "💾 Creating commit..."
git commit -m "Initial commit - Portfolio website"

echo ""
echo "🔗 Adding remote repository..."
git remote remove origin 2>/dev/null
git remote add origin "$repo_url"

echo ""
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✨ Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Click Settings → Pages"
echo "3. Select 'main' branch as source"
echo "4. Save and wait 2-3 minutes"
echo "5. Your site will be live!"
echo ""
echo "🎉 Happy coding!"
