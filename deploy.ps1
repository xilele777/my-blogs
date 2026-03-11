# 1. Build for production
Write-Host "1. Building site for production..."
./build.ps1

# 2. Add changes
Write-Host "2. Staging changes..."
git add .

# 3. Commit
$commitMessage = Read-Host "Enter commit message (default: Update blog content)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "Update blog content"
}
git commit -m "$commitMessage"

# 4. Push source to main
Write-Host "3. Pushing source code to main branch..."
git push origin main

# 5. Push public to gh-pages
Write-Host "4. Deploying to GitHub Pages (gh-pages branch)..."
git subtree push --prefix public origin gh-pages

Write-Host "Done! Site updated and deployed."
