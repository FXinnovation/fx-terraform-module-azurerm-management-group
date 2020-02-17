###
# General
###

variable "enabled" {
  description = "Boolean flag which describes whether or not enable this module"
  default     = true
}

###
# Subcriptions
###
variable "subscriptions_management_group_enabled" {
  description = "Boolean flag which decribes whether or not enable the subcription join to the management groups."
  default     = false
}

variable "subscription_ids" {
  description = "List of the subscription GUIDs which should be assigned to the Management Group."
  type        = list(string)
  default     = []
}

###
# Management Groups
###
variable "display_names" {
  description = "List of friendly names for this Management Group. If not specified, this'll be the same as the `group_id`. "
  type        = list(string)
  default     = []
}

variable "managemnet_group_subscription_ids" {
  description = "List of subscription GUIDs which should be assigned to the Management Group."
  type        = list(string)
  default     = []
}

variable "parent_management_group_ids" {
  description = "List of IDs of the parent Management Group. Changing this forces a new resource to be created."
  type        = list(string)
  default     = [""]
}

###
# Management locks
###

variable "management_lock_enabled" {
  description = "Boolean flag which describes whether or not enable the Management Lock."
  default     = false
}

variable "names" {
  description = "A list of names of the Management Lock. Changing this forces a new resource to be created."
  type        = list(string)
  default     = [""]
}

variable "scopes" {
  description = "A list which specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created."
  type        = list(string)
  default     = [""]
}

variable "lock_levels" {
  description = "List which specifies the level to be used for this lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created."
  type        = list(string)
  default     = [""]
}

variable "notes" {
  description = "A list which provides some notes about the lock. Maximum 512 characters. Changing this forces a new resource to be created."
  type        = list(string)
  default     = [""]
}
