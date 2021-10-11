 provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "admin"
}

module "my_vpc" {
	
	source = "./module/vpc"
	vpc_cidr = "10.0.0.0/16"
	tenancy = "default"
	subnet_cidr_publci = "10.0.1.0/24"
	sudnet_cidr_private = "10.0.2.0/24"
}

module "my_ec2" {

	source = "./module/ec2"
	ec2_ami = "ami-02e136e904f3da870"
	ec2_instance_type = "t2.micro"
	subnet_id_public = module.my_vpc.subnet_id_public
}

