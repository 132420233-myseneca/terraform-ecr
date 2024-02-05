
output "vpc_id" {
  value       = module.networking.vpc_id
  description = "The ID of the default VPC"
}

output "vpc_cidr_block" {
  value       = module.networking.vpc_cidr_block
  description = "The CIDR block of the default VPC"
}

output "public_subnet_id" {
  value       = module.networking.public_subnet_id
  description = "The ID of the public subnet"
}

output "public_subnet_cidr_block" {
  value       = module.networking.public_subnet_cidr_block
  description = "The CIDR block of the public subnet"
}