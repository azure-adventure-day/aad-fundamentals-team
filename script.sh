#!/bin/bash

location=$1
resourceGroup=$2
templateFile=$3

# Create a resource group.
echo "Creating resource group: $resourceGroup in $location..."
az group create --name $resourceGroup --location "$location"

# Create a deployment.
echo "Creating resources found in $templateFile in resource group: $resourceGroup in location: $location..."
az deployment group create --resource-group $resourceGroup --template-file $templateFile