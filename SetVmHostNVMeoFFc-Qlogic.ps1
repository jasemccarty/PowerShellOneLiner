Get-Cluster -Name <CLUSTERNAME> | Get-VMHost | Get-EsxCli  -v2 | Foreach-Object { $_.system.module.parameters.set.Invoke(@{module='qlnativefc';parameterstring='ql2xnvmesupport=1'})}
