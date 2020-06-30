variable "cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrA" {
  description = "CIDR block for public subnetA"
  default     = "10.0.72.0/24"
}

variable "public_subnet_cidrB" {
  description = "CIDR block for public subnetB"
  default     = "10.0.172.0/24"
}

variable "dns_hostname" {
  description = "Do you want to enable the dns hostname"
  default     = true
}