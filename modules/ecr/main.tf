provider "aws" {
region = "us-east-1"
}

resource "aws_ecr_repository" "web_app_repo" {
  count = length(var.ecr_repo_names)

  name = var.ecr_repo_names[count.index]
}


