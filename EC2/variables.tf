variable "ami" {
  description = "AMI ID for ubuntu 18.04LTS"
  default     = "ami-00f6a0c18edb19300"
}

variable "type" {
  description = "instance type"
  default     = "t2.micro"
}

variable "key" {
  description = "key pair"
  default     = "qadevops"
}

variable "public_subnet_id" {
  default = "default subnet"
}

variable "vpc_security_group_ids" {
  default = "default id"
}