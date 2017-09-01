# Script to update Afraid.org FreeDNS Binds for a Windows Client/Server

$ErrorActionPreference="SilentlyContinue"
Stop-Transcript | out-null
$ErrorActionPreference = "Continue"
Start-Transcript -path c:\Logging\afraid_dns.log -append
# do some stuff
echo $("Begin Afraid.org Free DNS Update for " + $env:ComputerName)
echo  "=========================================================="
echo  "Begin IPV6 Update..."
echo  "--------------------"
Invoke-WebRequest "http://v6.sync.afraid.org/u/YourFirstIPv6RecordKeyGoesHere/"
Invoke-WebRequest "http://v6.sync.afraid.org/u/YourSecondIPv6RecordKeyGoesHere/"
echo  "Begin IPV4 Update..."
echo  "--------------------"
Invoke-WebRequest "http://sync.afraid.org/u/YourFirstIPv4RecordKeyGoesHere/"
Invoke-WebRequest "http://sync.afraid.org/u/YourSecondIPv4RecordKeyGoesHere/"
echo  ""
echo  "--------------------"
echo  "Updates Finished!"
echo  ""
echo  ""
echo  ""
echo  "---------------------------------------------------------"
echo  ""
echo  ""
echo  ""
Stop-Transcript
Exit
