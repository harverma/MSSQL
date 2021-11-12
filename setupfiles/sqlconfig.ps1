robocopy  '\\172.20.32.12\Software\Software\Microsoft Software\SQL Server 2019\Enterprise Edition'  'C:\MSSQL2019\'
sleep -s 5
.\SW_DVD9_SQL_Svr_Enterprise_Edtn_2019Dec2019_64Bit_English_MLF_X22-22247.ISO
sleep -s 5
Get-Volume
sleep -s 5
$configfile = "C:\MSSQL2019\configuration.ini"
$command = "D:\setup.exe /ConfigurationFile=$($configfile)"
sleep -s 5
Invoke-Expression -Command $command
sleep -s 10
net start SQLSERVERAGENT
Set-Service SQLSERVERAGENT -StartupType Automatic
sleep -s 15
net start SQLBrowser
Set-Service SQLBrowser -StartupType Automatic
