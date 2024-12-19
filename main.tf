provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "twistedorc-new-bucket3"
  tags = {
    Name        = "MyFirsttwistedorc"
    Environment = "Dev"
  }
}
resource "aws_instance" "my_instance" {
  ami           = "ami-0b4624933067d393a"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "MythirdInstance"
  }
}

