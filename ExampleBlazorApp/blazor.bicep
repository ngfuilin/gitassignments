param serverfarms_plan_clouddeveloper_all_externalid string = '/subscriptions/c1b731ac-243b-4c03-b62e-6196f29a3fa0/resourceGroups/rg-Panu/providers/Microsoft.Web/serverfarms/plan-clouddeveloper-all'
param location string = 'West Europe'

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
    name: 'blazor-app-panu-bicep'
    location: location
    properties: { 
      serverFarmId: serverfarms_plan_clouddeveloper_all_externalid
      httpsOnly: true 
      siteConfig: {
        alwaysOn: true
      }
    } 
}
