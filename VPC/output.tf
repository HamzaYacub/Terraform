output "vpc_id" {
  description = "VPC Id for custom VPC"
  value       = "${aws_vpc.vpc1.id}"
}

output "public_subnet_idA" {
  description = "public subnet id for subnet A"
  value       = "${aws_subnet.subnetA.id}"
}

output "public_subnet_idB" {
  description = "public subnet id for subnet B"
  value       = "${aws_subnet.subnetB.id}"
}