# 🚀 Auto Update Script for GitHub Profile
# Script tự động cập nhật profile GitHub với theme xanh lam

Write-Host "🎨 Starting GitHub Profile Update..." -ForegroundColor Cyan

# Check if we're in the right directory
$currentDir = Get-Location
if ($currentDir.Path -notlike "*kwishtt*") {
    Write-Host "❌ Please run this script from the kwishtt directory" -ForegroundColor Red
    exit 1
}

# Add all changes
Write-Host "📝 Adding changes to git..." -ForegroundColor Yellow
git add .

# Check if there are changes to commit
$status = git status --porcelain
if ([string]::IsNullOrEmpty($status)) {
    Write-Host "✅ No changes to commit" -ForegroundColor Green
    exit 0
}

# Get current date for commit message
$date = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMessage = "🔄 Auto update profile - $date"

# Commit changes
Write-Host "💾 Committing changes..." -ForegroundColor Yellow
git commit -m $commitMessage

# Push to GitHub
Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
git push origin main

Write-Host "✨ Profile updated successfully!" -ForegroundColor Green
Write-Host "🐍 Snake animation will update automatically within 6 hours" -ForegroundColor Cyan

# Check GitHub Actions status
Write-Host "🔍 Checking GitHub Actions..." -ForegroundColor Yellow
Write-Host "Visit: https://github.com/kwishtt/kwishtt/actions" -ForegroundColor Blue
