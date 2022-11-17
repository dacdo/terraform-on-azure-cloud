# Call our Custom Terraform Module which we built earlier
module "azure_static_website" {
  source  = "dacdo/staticwebsitepublic/azurerm"
  version = "1.0.1"

  # Resource Group
  location            = "Australia Central"
  resource_group_name = "dac-my-rg"

  # Storage Account
  storage_account_name              = "staticwebsite"
  storage_account_tier              = "Standard"
  storage_account_replication_type  = "LRS"
  storage_account_kind              = "StorageV2"
  static_website_index_document     = "index.html"
  static_website_error_404_document = "error.html"
}
