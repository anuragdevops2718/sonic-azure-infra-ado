data "azurerm_key_vault" "demokv" {
    name = "devkvsonic"
    resource_group_name = "devrgsonic"
}

data "azurerm_key_vault_secret" "secret01" {
  name         = "devsecret01"
  key_vault_id = data.azurerm_key_vault.demokv.id
}

data "azurerm_key_vault_secret" "secret02" {
  name         = "devsecret02"
  key_vault_id = data.azurerm_key_vault.demokv.id
}
