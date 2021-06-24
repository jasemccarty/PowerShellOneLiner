$Cluster | Get-VM | Sort-Object Name | % {Get-SpbmEntityConfiguration -VM $_.Name;Get-HardDisk -VM $_.Name|%{Get-SpbmEntityConfiguration $_}}
