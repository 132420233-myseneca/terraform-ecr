output "vpc_id" {
  value = aws_default_vpc.default_vpc.id
  description = "The ID of the default VPC"
}

output "vpc_cidr_block" {
  value = aws_default_vpc.default_vpc.cidr_block
  description = "The CIDR block of the default VPC"
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "The ID of the public subnet"
}

output "public_subnet_cidr_block" {
  value = aws_subnet.public_subnet.cidr_block
  description = "The CIDR block of the public subnet"
}
