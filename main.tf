###
# locals
###

locals {
  should_create_management_groups   = var.enabled && var.root_management_group_enabled
  should_join_subscriptions_to_root = var.enabled && var.subscriptions_management_group_enabled
}

###
# Subcriptions
###

resource "azurerm_management_group" "this_subscription" {
  count = local.should_join_subscriptions_to_root ? 1 : 0

  subscription_ids = [element(var.subscription_ids, count.index)]
}

###
# Management Groups
###

resource "azurerm_management_group" "this" {
  count = local.should_create_management_groups ? length(var.display_names) : 0

  display_name               = element(var.display_names, count.index)
  subscription_ids           = [element(var.management_group_subscription_ids, count.index)]
  parent_management_group_id = element(var.parent_management_group_ids, count.index)
}

###
# Management locks
###

resource "azurerm_management_lock" "this" {
  count = var.enabled && var.management_lock_enabled ? length(var.resource_names) : 0

  name       = var.names[count.index]
  scope      = var.scopes[count.index]
  lock_level = var.lock_levels[count.index]
  notes      = var.notes[count.index]
}
