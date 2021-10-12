resource "aws_vpc" "helia" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy

  tags = {
    Name = "jenkinsTerraform-VPC"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.helia.id
  cidr_block = var.subnet_cidr_public

  tags = {
    Name = "Public"
  }
}


resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.helia.id
  cidr_block = var.subnet_cidr_private

  tags = {
    Name = "Private"
  }
}


output "vpc_id" {

value = aws_vpc.helia.id

}


output "subnet_id_public" {

value = aws_subnet.public.id

}

output "subnet_id_private" {

value = aws_subnet.private.id

}

