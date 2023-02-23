var storageAccountName = 'sa${uniqueString(resourceGroup().id)}'

resource aadstorageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}

resource aad_team_vnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: 'aad-team-vnet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.0.0.0/29'          
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
  }
}

output SA string = storageAccountName
output KEY string = listKeys(resourceId('Microsoft.Storage/storageAccounts', storageAccountName), '2022-09-01').keys[0].value
