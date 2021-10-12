variable "vpc_cidr" {}

variable "vpc_tenancy" {}

variable "subnet_cidr_public" {}

variable "subnet_cidr_private" {}

variable "subnet_id_public" {
        type = string
        description = "ec2 instance value"
        default = "10.0.0.0/16"
}

