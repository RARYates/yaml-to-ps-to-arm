Import-Module powershell-yaml

$yaml = Get-Content hash.yaml | ConvertTo-Yaml

Write-Host $yaml