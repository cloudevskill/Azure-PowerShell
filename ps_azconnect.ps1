$appid = "509a4e82-3714-44e3-a67a-597744c919e9"
$tenantid = "6c174538-85f0-49d6-a080-c861fd1c9249"
$Appsecret = "wfs8Q~OiRKjIQdBsWIcrL1F5Ix_bywFpHxKKeajt"
$RG = "PS-RG"
$location = "westus2"

$securekey = $Appsecret | ConvertTo-SecureString -AsPlainText -Force

$credential = New-Object -TypeName System.Management.Automation.PSCredential `
    -ArgumentList $appid, $securekey

Connect-AzAccount -ServicePrincipal -Credential $credential -Tenant $tenantid

New-AzResourceGroup -Name $RG -Location $location

#Test