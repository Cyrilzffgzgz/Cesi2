$Date = Get-Date -FORMAT "dd:mm:yyyy hh/MM"
$ComputerName = $env:COMPUTERNAME
$User = $env:USERNAME
$OS = (Get-ComputerInfo).OsName
$CPU = (Get-WmiObject Win32_Processor).Name
$RAM = (Get-WmiObject Win32_ComputerSystem).TotalPhysicalMemory / 1GB

$Rapport = @"
===== RAPPORT SYSTEME =====
MAchine : $ComputerName
Utilisateur : $User
OS : $OS
Processeur : $CPU
RAM (Go) : $[math]::Round($Ram,2))
Date : $Date
========
"@

$Rapport | Out-File "system_info.txt" -Encoding UTF8