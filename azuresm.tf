variable "subscription_id" {
  description = "Azure subscription ID"
  default     = "SUBSCRIPTION_ID"
}
variable "certificate" {
  description = "Azure certificate"
  default     = "CERTIFICATE"
}

# Configure the Azure Service Management Provider
provider "azure" {
  subscription_id = "${var.subscription_id}"
  certificate     = "${var.certificate}"
}

resource "azure_virtual_network" "test" {
  name                = "TestTerraformVirtualNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }
}
