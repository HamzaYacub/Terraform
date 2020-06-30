variable "vpc_id" {
  description = "VPC ID"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [80, 8080, 443]
}

variable "ownIP" {
  default = ["0.0.0.0/0"]
}