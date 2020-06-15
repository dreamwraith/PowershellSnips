param(
[int]$RunMins = 60
)
Set-StrictMode -Version 2.0

$myShell = New-Object -com "Wscript.Shell"

Write-Output "Stayin Alive... $RunMins minutes remaining."

for ($i = 0; $i -lt $RunMins; $i++)
{
    Start-Sleep -Seconds 60
    $myShell.SendKeys("{F15}")
    [int]$curtime = $RunMins-$i
    Write-Output "Stayin Alive... $curtime minutes remaining."
}
# Usage: ./KeepAlive.ps1 -RunMins 60
