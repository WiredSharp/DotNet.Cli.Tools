[CmdletBinding(SupportsShouldProcess)]
Param(
)

# publish PS module locally

$ModuleName = "dotnetcli-projects"

# PS module lookup path
$moduleFolder = $env:PSModulePath.Split(";")[0]

$targetFolder = Join-Path -Path $moduleFolder -ChildPath $ModuleName

Write-Verbose "publishing module $ModuleName to $targetFolder..."

Copy-Item -Recurse -Path ".\${ModuleName}" -Destination $moduleFolder -Force