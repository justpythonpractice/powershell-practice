Get-CimInstance -ComputerName (Get-Content C:\Temp\Computer.txt) -ClassName win32_product -ErrorAction SilentlyContinue| Select-Object PSComputerName, Name, PackageName, InstallDate | Export-Csv -Path C:\Temp\ps.csv -NoTypeInformation
$srvrlist = Get-Content -Path 'C:\temp\Computer.txt'  
ForEach ($computername in $srvrlist) {Get-WindowsFeature | Where-Object {$_.Installed -eq $true} | Select-Object $computername, Name | Export-Csv -Path c:\temp\$computername.csv -NoTypeInformation}
ForEach ($computername in $srvrlist) {Get-WinEvent -FilterHashtable @{Logname='Security';ID=4672} -MaxEvents 10 | select @{N='User';E={$_.Properties[1].Value}} | Out-File c:\temp\logon.csv -Append}
