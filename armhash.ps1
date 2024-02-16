Import-Module powershell-yaml

$yaml = Get-Content hash.yaml | ConvertTo-Yaml

# Need chunk to pull VNetSettings and networkSecurityGroupsSettings as two distinct objects
# $VNetSettings = $yaml.something
# $networkSecurityGroupSettings = $yaml.something

Write-Host $yaml


# AZ CLI based option
# Should deploy: az deployment group create -g <rg> --template-file deploy.json --VNetSettings $VNetSettings -networkSecurityGroupSettings $networkSecurityGroupSettings

# Powershell based option
# The real trick: Figuring out if the raw grab from the YAML needs to be reformatted for ARM - WITH the Value settings, it's possible it'll pass right through!
# https://learn.microsoft.com/en-us/powershell/module/az.resources/new-azresourcegroupdeployment?view=azps-11.3.0 - Good way to comb the hash!