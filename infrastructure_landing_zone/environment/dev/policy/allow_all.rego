package terraform

deny[msg] {
  some r
  r := input.resource_changes[_]
  r.type == "azurerm_public_ip"
  msg := "Public IPs are not allowed"
}