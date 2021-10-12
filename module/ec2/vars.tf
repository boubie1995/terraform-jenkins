variable "ec2_ami" {
	type = string
	description = "ami of the ec2 instance"

}

variable "ec2_instance_type" {
	type = string
	description = "instance type"
}

variable "subnet_id_public" {
	type = string
	description = "subnet public id"
}

