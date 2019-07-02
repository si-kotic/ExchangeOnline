Function Connect-ExchangeOnline {
	Param (
	$Credentials
	)
	$exchSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $Credentials -Authentication Basic -AllowRedirection
	Import-PSSession $exchSession
}

<#Function Disconnect-ExchangeOnline {
    Get-PSSession | Where-Object {
        $_.ComputerName -eq "outlook.office365.com"
    } | Exit-PSSession
}#>