output "vpc_id" {
  description = "VPC Id for custom VPC"
  value       = "${aws_vpc.vpc1.id}"
}

output "public_subnet_id" {
  description = "public subnet id"
  value       = "${aws_subnet.subnet1.id}"
}