output "level_1_management_group_ids" {
  value = module.level_1.*.management_group_ids
}

output "level_2_management_group_ids" {
  value = module.level_2.*.management_group_ids
}

output "level_3_management_group_ids" {
  value = module.level_3.*.management_group_ids
}

output "management_lock_ids" {
  value = module.level_3.*.management_lock_ids
}
