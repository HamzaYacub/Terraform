resource "aws_vpc" "vpc1" {
  cidr_block           = var.cidr
  enable_dns_hostnames = var.dns_hostname

  tags = {
    Name = "vpc1"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "subnetA" {
  cidr_block        = var.public_subnet_cidrA
  vpc_id            = "${aws_vpc.vpc1.id}"
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public_subnetA"
  }
}

resource "aws_subnet" "subnetB" {
  cidr_block        = var.public_subnet_cidrB
  vpc_id            = "${aws_vpc.vpc1.id}"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "public_subnetB"
  }
}