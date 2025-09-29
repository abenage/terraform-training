data "akamai_group" "my_group_id" {
  group_name  = "Akamai Technologies - Assets-1-3CV382"
  contract_id = "1-3CV382"

}

output "my_group_id" {
  value = data.akamai_group.my_group_id.id
}

/////////////

data "akamai_contract" "my_contract" {
  group_name  = "Akamai Technologies - Assets-1-3CV382"
}

output "my_contract" {
    value = data.akamai_contract.my_contract
}


/////////////


data "akamai_properties" "my_properties" {
  group_id    = "grp_18385"
  contract_id = "1-3CV382"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}


/////////////



data "akamai_appsec_configuration" "all-configurations" {
}

output "configuration-list" {
  value = data.akamai_appsec_configuration.all-configurations.output_text
}


# #taken from docs, but contract is not valid with group name.
# data "akamai_group" "group" {
#  group_name = "Advanced Solutions Services-C-1ED34DY"
#  contract_id = "ctr_C-1ED34DY"
# }

# data "akamai_contract" "contract" {
#   group_name = data.akamai_group.group.group_name
# }

# data "akamai_appsec_configuration" "configurations" {
# }

# output "configuration_list" {
#   value = data.akamai_appsec_configuration.configurations.output_text
# }


# data "akamai_appsec_configuration" "my_config" {
# }

# output "config_id" {
#   value = data.akamai_appsec_configuration.my_config.config_id
# }

# Doesn't work. 
# data "akamai_property" "my_property" {
#   name= "AMTest"
# }


# output "my_property" {
#   value = data.akamai_property.my_property
# }