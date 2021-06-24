Get-Cluster -Name "Cluster" | Get-VMhost | Get-EsxCli -v2 | % { $_.vsan.network.ipv4.set.Invoke(@{interfacename='vmk1';agentmcaddr='224.2.3.6';mastermcaddr='224.2.3.5'})}
