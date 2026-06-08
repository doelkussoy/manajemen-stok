# PowerShell helper to run SQL seed on local MySQL (XAMPP)
# Usage: Open PowerShell as Administrator and run: .\RUN_SEED.ps1 -SqlFile .\seed_full_50_random.sql
param(
  [string]$SqlFile = "seed_full_50_random.sql",
  [string]$DbName = "db_ta",
  [string]$MySqlUser = "root",
  [string]$MySqlPass = "",
  [string]$MySqlBin = "C:\\xampp\\mysql\\bin\\mysql.exe"
)

$fullPath = Join-Path -Path (Get-Location) -ChildPath $SqlFile
if (-not (Test-Path $fullPath)) {
  Write-Error "SQL file not found: $fullPath"
  exit 1
}

$cmd = "`"$MySqlBin`" -u $MySqlUser " + (if ($MySqlPass -ne "") {"-p$MySqlPass"} else {""}) + " $DbName < `"$fullPath`""
Write-Output "Running: $cmd"
iex $cmd
Write-Output "Done. Check database $DbName." 
