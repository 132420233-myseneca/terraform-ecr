


variable "instance_type" {
default = "t2.micro"
  description = "Type of the instance"
  type        = string
}

variable "ecr_repo_names" {
  type    = list(string)
  default = ["sql-image", "webapp-image"]  # Add more repository names as needed
}

variable "prefix" {
  type        = string
  default = "teddy"
  description = "Name prefix"
}

variable "cidr_block" {
default = "172.31.96.0/20"
  type = string
}
