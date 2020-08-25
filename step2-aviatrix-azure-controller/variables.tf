variable "rg_name" {
  description = "Resource Group name for your controller"
  type        = string
}
variable location {
  default = "East US"
}

variable env_tag {
  default = "POC"
}

