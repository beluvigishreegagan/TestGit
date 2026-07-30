terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.10.0"
    }
  }
}

provider "azuredevops" {
  # Use environment variables instead of hardcoded credentials.
  # AZDO_ORG_SERVICE_URL and AZDO_PERSONAL_ACCESS_TOKEN are read automatically by the provider.
}

# export AZDO_PERSONAL_ACCESS_TOKEN=<Personal Access Token>
# export AZDO_ORG_SERVICE_URL=https://dev.azure.com/<Your Org Name>
