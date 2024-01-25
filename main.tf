provider "aws" {
  region = "us-east-1" 
}
resource "aws_instance" "instance" {
  ami           = "ami" # Specify the AMI ID
  instance_type = "t2.medium"    
}
