resource "aws_vpc" "vpc1" {
  cidr_block           = var.cidr
  enable_dns_hostnames = var.dns_hostname

  tags = {
    Name = "vpc1"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = var.public_subnet_cidr
  vpc_id     = "${aws_vpc.vpc1.id}"

  tags = {
    Name = "public_subnet1"
  }
}