 provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "admin"
}

module "my_vpc" {
	
	source = "./module/vpc"
	vpc_cidr = var.vpc_cidr
	vpc_tenancy = var.tenancy
	subnet_cidr_public = var.subnet_cidr_public
	subnet_cidr_private = var.subnet_cidr_private
}

module "my_ec2" {

	source = "./module/ec2"
	ec2_ami = var.ec2_ami
	ec2_instance_type = var.ec2_instance_type
	subnet_id_public = module.my_vpc.subnet_id_public
}

