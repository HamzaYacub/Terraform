provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
}

module "vpc" {
  source = "./VPC"
}

module "sg" {
  source = "./SG"
  vpc_id = module.vpc.vpc_id
}

module "igw" {
  source = "./IGW"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./EC2"
  public_subnet_id = module.vpc.public_subnet_id
  vpc_security_group_ids = module.sg.aws_SG_id
}

module "rt" {
  source = "./RT"
  vpc_id = module.vpc.vpc_id
  gw_id = module.igw.gw_id
  sn_id = module.vpc.public_subnet_id
}