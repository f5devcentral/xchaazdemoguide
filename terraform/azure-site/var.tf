variable "environment" {
  type        = string
  default     = "ha-services-ce"
  description = "Environment Name"
}

variable "xc_api_url" {
  type    = string
  default = "https://your_tenant_name.ves.volterra.io/api"
}

variable "xc_api_p12_file" {
  default = "../api-creds.p12"
}

variable "azure_rg_location" {
  type    = string
  default = "centralus"
}

variable "azure_subscription_id" {
  type    = string
  default = ""
}

variable "azure_subscription_tenant_id" {
  type    = string
  default = ""
}

variable "azure_xc_machine_type" {
  type    = string
  default = "Standard_D3_v2"
}

variable "kubeconfig_path" {
  type    = string
  default = "../kubeconfig.conf"
}