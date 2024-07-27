module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alex.vartoumian+dummy@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT_management"
    SSOUserEmail              = "alex.vartoumian+dummy@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT-try1"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
