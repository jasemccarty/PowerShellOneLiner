Get-Cluster -Name "Cluster1" | Get-VMhost | Get-EsxCli -V2 | % {Write-Host $_.VMHost " " -NoNewLine;$_.software.vib.get.invoke(@{vibname='nfnic'}).Version.Split("-")[0]}
