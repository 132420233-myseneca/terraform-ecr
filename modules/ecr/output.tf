output "ecr_repository_url" {
  value = aws_ecr_repository.web_app_repo[*].repository_url
  description = "The URL of the created ECR repository"
}
