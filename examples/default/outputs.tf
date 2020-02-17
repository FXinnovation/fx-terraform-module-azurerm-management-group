output "management_group_ids" {
  value = module.example.*.management_group_ids
}

output "child_management_group_ids" {
  value = module.example.*.child_management_group_ids
}
