param(
  [int]$Port = 1818,
  [string]$Bind = "127.0.0.1",
  [string]$Poll = "700ms"
)

Write-Host "Starting Hugo dev server with real-time rebuilds..."
Write-Host "Port: $Port, Bind: $Bind, Poll: $Poll"

hugo server -D --disableFastRender --noHTTPCache --poll $Poll --port $Port --bind $Bind
