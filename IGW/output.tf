output "gw_id" {
  description = "Gateway Id for internet gateway"
  value       = "${aws_internet_gateway.igw.id}"
}