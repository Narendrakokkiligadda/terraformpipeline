terraform {
  backend "azurerm" {
    resource_group_name  = "azure-rg"
    storage_account_name = "srdsrsrssrsrfdfdf"
    container_name       = "aasasa"
    key                  = "prod.terraform.tfstate"
  }
}
