output "management_group_ids" {
  description = "The ids of the management groups. "
  value       = compact(concat(azurerm_management_group.this.*.id, [""]))
}

output "map_management_group_ids" {
  description = "Map of mangement group display names and their IDs."
  value       = zipmap(var.display_names, compact(concat(azurerm_management_group.this.*.id, [""])))
}

output "management_lock_ids" {
  description = "The ids of the management locks."
  value       = compact(concat(azurerm_management_lock.this.*.id, [""]))
}
