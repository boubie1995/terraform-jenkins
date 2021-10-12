# VPC VARS

vpc_cidr = "192.168.0.0/16"
vpc_tenancy = "default"
subnet_cidr_public = "192.168.1.0/24"
subnet_cidr_private = "192.168.2.0/24"

# EC2 VARS

ec2_ami = "ami-02e136e904f3da870"
ec2_instance_type = "t2.micro"

# S3 VARS 

s3_bucket = "Terraform_Backup"
s3_key_name = "backup"
s3_source = "../../terraform.tfstate.backup"
