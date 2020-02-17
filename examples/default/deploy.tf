resource "random_string" "this" {
  length  = 6
  upper   = false
  special = false
}

module "level_1" {
  source = "../.."

  enabled                  = true
  management_group_enabled = true
  display_names            = ["toto${random_string.this.result}"]
}

module "level_2" {
  source = "../.."

  enabled                  = true
  management_group_enabled = true
  display_names            = ["boo${random_string.this.result}"]
}

module "level_3" {
  source = "../.."

  enabled                           = true
  management_group_enabled          = true
  display_names                     = ["foo${random_string.this.result}"]
  management_group_subscription_ids = [["${var.subscription_id}"]]
  parent_management_group_ids       = ["${lookup(module.level_2.map_management_group_ids, "boo${random_string.this.result}", null)}"]
}
