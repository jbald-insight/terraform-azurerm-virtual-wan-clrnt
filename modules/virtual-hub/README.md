# Azure Virtual Hub
This module creates a Virtual Hub and attach it to an existing [Virtual Wan](https://docs.microsoft.com/en-us/azure/virtual-wan/virtual-wan-about).

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_hub.vhub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |
| [azurerm_virtual_hub_connection.peer_vnets_to_hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Name of client. | `string` | n/a | yes |
| custom\_virtual\_hub\_name | Custom Virtual Hub's name | `string` | `null` | no |
| default\_tags\_enabled | Option to enabled or disable default tags | `bool` | `true` | no |
| environment | Name of application's environment. | `string` | n/a | yes |
| extra\_tags | Tags for this Virtual Hub | `map(string)` | `{}` | no |
| internet\_security\_enabled | Define internet security parameter in Virtual Hub Connections if set | `bool` | `null` | no |
| location | Azure location. | `string` | n/a | yes |
| location\_short | Short string for Azure location. | `string` | n/a | yes |
| name\_prefix | Prefix for generated resources names. | `string` | `""` | no |
| name\_slug | Slug to use with the generated resources names. | `string` | `""` | no |
| name\_suffix | Suffix for the generated resources names. | `string` | `""` | no |
| peered\_virtual\_networks | List of Virtual Networks IDs to peer with the Virtual Hub. | `list(string)` | `[]` | no |
| resource\_group\_name | Name of the application's resource group. | `string` | n/a | yes |
| stack | Name of application's stack. | `string` | n/a | yes |
| virtual\_hub\_address\_prefix | The address prefix which should be used for this Virtual Hub. Cannot be smaller than a /24. A /23 is recommended by Azure | `string` | n/a | yes |
| virtual\_hub\_routes | List of route blocks. `next_hop_ip_address` values can be `azure_firewall` or an IP address. | <pre>list(object({<br>    address_prefixes    = list(string),<br>    next_hop_ip_address = string<br>  }))</pre> | `[]` | no |
| virtual\_hub\_sku | The SKU of the Virtual Hub. Possible values are `Basic` and `Standard` | `string` | `"Standard"` | no |
| virtual\_wan\_id | ID of the Virtual Wan which host this Virtual Hub | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_hub\_default\_route\_table\_id | ID of the default route table in the Virtual Hub |
| virtual\_hub\_id | ID of the virtual hub |
<!-- END_TF_DOCS -->
