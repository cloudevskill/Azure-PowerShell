
$resourcegroup = "STG-RG"
$VnetName = "net01"
$location = "westus2"
$VnetAddressPrefix = "10.0.0.0/16"
$SubnetName = "Frontend_Subnet"
$SubnetAddressPrefix = "10.0.0.0/24"

$frontendsubnet = New-AzVirtualNetworkSubnetConfig -Name  $SubnetName -AddressPrefix $SubnetAddressPrefix



$isvnetavaiilable = Get-AzVirtualNetwork -Name $VnetName

if ($isvnetavaiilable) {
    Write-Output "VirtualNetwork is already exist"
}
    

else {
    Write-Output "Creating the VirtualNetwork"
    $vnetcreate = New-AzVirtualNetwork -Name $VnetName -ResourceGroupName "STG-RG" -Location $location -AddressPrefix $VnetAddressPrefix -Subnet $frontendsubnet
    Write-Output "VNet Created"    
}


#Get-AzVirtualNetwork
