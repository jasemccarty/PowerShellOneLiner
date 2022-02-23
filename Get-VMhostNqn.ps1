Get-Cluster -Name <CLUSTERNAME> | Get-VMHost | Get-EsxCli  -v2 | Foreach-Object { $_.nvme.info.get.Invoke()} 
