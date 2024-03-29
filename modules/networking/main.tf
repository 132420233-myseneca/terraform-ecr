provider "aws" {
  region = "us-east-1"
}


resource "aws_default_vpc" "default_vpc" {
  tags = {
    Name = "Default VPC"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_default_vpc.default_vpc.id
  cidr_block        = var.cidr_block
  availability_zone = data.aws_availability_zones.available.names[1]
}
