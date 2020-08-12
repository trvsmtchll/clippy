# Create an Aviatrix Azure Account
resource "aviatrix_account" "azure_account" {
  account_name        = "My-Azure-Acct"
  cloud_type          = 8
  arm_subscription_id = var.arm_subscription_id
  arm_directory_id    = var.arm_directory_id
  arm_application_id  = var.arm_application_id
  arm_application_key = var.arm_client_secret
}
