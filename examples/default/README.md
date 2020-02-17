## Default example

This should create resources related to management groups.

## Usage
```
terraform init
terraform plan
terraform apply
terraform destroy
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_id | n/a | `string` | n/a | yes |
| client\_secret | n/a | `string` | n/a | yes |
| subscription\_id | n/a | `string` | n/a | yes |
| tenant\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| level\_1\_management\_group\_ids | n/a |
| level\_2\_management\_group\_ids | n/a |
| level\_3\_management\_group\_ids | n/a |
| management\_lock\_ids | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
