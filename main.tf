data "akamai_group" "my_group_id" {
    group_name  = "My group name"
    contract_id = "ctr_C-0N7RAC7"
}

output "my_group_id" {
    value = data.akamai_group.my_group_id
}



data "akamai_properties" "my_properties" {
    group_id    = "12345"
    contract_id = "C-0N7RAC7"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}



data "akamai_appsec_configuration" "my-configurations" {
}

output "configuration-list" {
  value = data.akamai_appsec_configuration.my-configurations.output_text
}