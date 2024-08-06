provider  "aws" { 
  region = "us-west-2"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-02f9041628cc2f753"
   instance_type =  "t2.micro"

   tags = var.project_environment

}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    project     = "project-alpha",
    environment = "dev"
  }
}