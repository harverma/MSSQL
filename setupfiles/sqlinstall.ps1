$configfile = "C:\MSSQL2019\configuration.ini"
$command = "D:\setup.exe /ConfigurationFile=$($configfile)"
Invoke-Expression -Command $command
