variable "vpc_cidr" {
	type = string
	description = "vpc_cidr value"
	default = "10.0.0.0/16"
}

variable "tenancy" {
	type = string
    description = "value of tenancy"
    default = "default"
}

variable "subnet_cidr_public" {
	type = string
    description = "value of subnet cidr public"
    default = "10.0.1.0/24"
}

variable "subnet_cidr_private" {
	type = string
    description = "value of subnet cidr private"
    default = "10.0.2.0/24"
}


variable "ec2_ami" {
	type = string
	description = "ec2 ami value"
	default = "ami-02e136e904f3da870"
}

variable "ec2_instance_type" {
	type = string
    description = "ec2 instance value"
    default = "t2.micro"
}

variable "s3_bucket" {
    type = string
    description = "name of s3 bucket"
    default = "Terraform Backup"
}

variable "s3_key_name" {
    type = string
    description = "name of key pair in s3"
    default = "backup"
}

variable "s3_source" {
    type = string
    description = "path of terraform.tfstate.backup file"
    default = "../../terraform.tfstate.backup"
}