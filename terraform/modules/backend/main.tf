terraform {
  backend "s3" {
    bucket         = "terraform-state-backend777"       
    key            = "ecs-fargate-demo/terraform.tfstate" 
    region         = "ap-south-1"                    
    dynamodb_table = "terraform-state-lock-table" 
    encrypt        = true
  }
}
