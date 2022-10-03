resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket12345554555"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "my instance" {
    ami            = "ami-00e912d13fbb4f225"
    instance_type  = "t2.micro"
    vpc_security_group_ids =["sg-0d9a7a5aa16aeefb9"]
    tags           = {
        Name       = "ec2-instance"
    }
}