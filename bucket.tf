terraform {
  backend "s3" {
    bucket = "teddy-docker"      
    key    = "docker/terraform.tfstate" 
    region = "us-east-1"                     
  }
}