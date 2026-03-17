Write-Host "Building for production..."
if (Test-Path -LiteralPath "public") {
  Remove-Item -LiteralPath "public" -Recurse -Force
}
hugo --minify
Write-Host "Build complete. content is in 'public' directory."
