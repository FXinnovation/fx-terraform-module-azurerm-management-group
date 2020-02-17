# terraform-module-azurerm-management-group

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| display\_names | List of friendly names for this Management Group. If not specified, this'll be the same as the `group_id`. | `list(string)` | `[]` | no |
| enabled | Boolean flag which describes whether or not enable this module | `bool` | `true` | no |
| lock\_levels | List which specifies the level to be used for this lock. Possible values are `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| management\_group\_enabled | Boolean flag which describes whether or not to enabled the Mangement groups. | `bool` | `false` | no |
| management\_group\_subscription\_ids | List of subscription GUIDs which should be assigned to the Management Group. | `list(list(string))` | <pre>[<br>  []<br>]</pre> | no |
| management\_lock\_enabled | Boolean flag which describes whether or not enable the Management Lock. | `bool` | `false` | no |
| names | A list of names of the Management Lock. Changing this forces a new resource to be created. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| notes | A list which provides some notes about the lock. Maximum 512 characters. Changing this forces a new resource to be created. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| parent\_management\_group\_ids | List of IDs of the parent Management Group. Changing this forces a new resource to be created. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| scopes | A list which specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| subscription\_ids | List of the subscription GUIDs which should be assigned to the Management Group. | `list(string)` | `[]` | no |
| subscriptions\_management\_group\_enabled | Boolean flag which decribes whether or not enable the subcription join to the management groups. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| management\_group\_ids | The ids of the management groups. |
| management\_lock\_ids | The ids of the management locks. |
| map\_management\_group\_ids | Map of mangement group display names and their IDs. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
