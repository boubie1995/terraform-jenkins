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

variable "subnet_id_public" {
	type = string
        description = "ec2 instance value"
        default = "10.0.0.0/16"
}

