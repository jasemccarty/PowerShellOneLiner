Get-Cluster -Name <CLUSTERNAME> | Get-VMHost | Get-EsxCli  -v2 | % { $_.vsan.network.ip.add.Invoke(@{traffictype='witness';interfacename='vmk0'})}
