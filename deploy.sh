#!/bin/bash

# QA Prompts Wiki - Quick Deploy to GitHub Pages
# Run this script to deploy your wiki as a website

echo "🚀 QA Prompts Wiki - GitHub Pages Deployment"
echo "=============================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ GitHub username is required"
    exit 1
fi

# Get repo name (default: qa-prompts-wiki)
read -p "Repository name [qa-prompts-wiki]: " REPO_NAME
REPO_NAME=${REPO_NAME:-qa-prompts-wiki}

echo ""
echo "📝 Summary:"
echo "   GitHub User: $GITHUB_USER"
echo "   Repository: $REPO_NAME"
echo "   Your site will be: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
read -p "Continue? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "❌ Deployment cancelled"
    exit 0
fi

echo ""
echo "🔧 Step 1: Initializing git..."
git init
git add .
git commit -m "🚀 Initial QA Prompts Library"

echo ""
echo "🔧 Step 2: Creating GitHub repository..."
echo "   Please create a repository named '$REPO_NAME' on GitHub.com"
echo "   Then press Enter to continue..."
read

echo ""
echo "🔧 Step 3: Connecting to GitHub..."
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"
git branch -M main

echo ""
echo "🔧 Step 4: Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📌 Next steps:"
echo "   1. Go to: https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "   2. Under 'Source', select: main branch, / (root)"
echo "   3. Click Save"
echo "   4. Wait 2-3 minutes"
echo "   5. Visit: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "🎉 Your QA Prompts Wiki will be live soon!"
