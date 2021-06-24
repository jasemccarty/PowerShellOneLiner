Get-Cluster -Name "Cluster" | Get-VMhost | % {(Get-View -Id (Get-View ServiceInstance).Content.CertificateManager).CertMgrRefreshCACertificatesAndCRLs($_.ExtensionData.MoRef)}
