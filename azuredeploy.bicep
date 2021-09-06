targetScope = 'subscription'

param location string = 'westeurope'
param prefix string = 

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rg-contoso'
  location: location
}

resource symbolicname 'Microsoft.Synapse/workspaces@2020-12-01' = {
  name: 'string'
  location: location
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  identity: {
    type: 'string'
  }
  properties: {
    connectivityEndpoints: {}
    defaultDataLakeStorage: {
      accountUrl: 'string'
      filesystem: 'string'
    }
    encryption: {
      cmk: {
        key: {
          keyVaultUrl: 'string'
          name: 'string'
        }
      }
    }
    managedResourceGroupName: 'string'
    managedVirtualNetwork: 'string'
    managedVirtualNetworkSettings: {
      allowedAadTenantIdsForLinking: [ 'string' ]
      linkedAccessCheckOnTargetResource: bool
      preventDataExfiltration: bool
    }
    privateEndpointConnections: [
      {
        properties: {
          privateEndpoint: {}
          privateLinkServiceConnectionState: {
            description: 'string'
            status: 'string'
          }
        }
      }
    ]
    purviewConfiguration: {
      purviewResourceId: 'string'
    }
    sqlAdministratorLogin: 'string'
    sqlAdministratorLoginPassword: 'string'
    virtualNetworkProfile: {
      computeSubnetId: 'string'
    }
    workspaceRepositoryConfiguration: {
      accountName: 'string'
      collaborationBranch: 'string'
      hostName: 'string'
      lastCommitId: 'string'
      projectName: 'string'
      repositoryName: 'string'
      rootFolder: 'string'
      tenantId: 'string'
      type: 'string'
    }
  }
}
