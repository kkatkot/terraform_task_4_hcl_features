output "vm_names" {
  value = [for vm in azurerm_virtual_machine.main : upper(vm.name)]
}
output "merged_tag" {
  value = join("-", azurerm_virtual_machine.main[*].tags["environment"])
}
output "vm_ids" {
  value = azurerm_virtual_machine.main[*].id
}