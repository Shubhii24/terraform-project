provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

module "frontend" {
  source = "./module/frontend"
//  availability_zones = ["us-east-1a"]
  name_prefix = var.name_prefix
  image_id = var.image_id
}