Set-ExecutionPolicy Bypass -Scope CurrentUser

$source="$PSScriptRoot\..\MarkdownMonster"
$target="$PSScriptRoot\Distribution"

robocopy ${source}\bin\Release ${target} /MIR
del ${target}\*.vshost.*
del ${target}\*.pdb
del ${target}\*.xml

del ${target}\addins\*.pdb
del ${target}\addins\*.xml