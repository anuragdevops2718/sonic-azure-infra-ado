package terraform

deny[msg] {
  r := input.resource_changes[_]
  r.type == "azurerm_public_ip"
  msg := "Public IPs are not allowed"
}
