resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket12345554555"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "manojinstance" {
    ami            = "ami-04ff9e9b51c1f62ca"
    instance_type  = "t2.micro"
    vpc_security_group_ids =[ "sg-03919f41268cdfb36"]
    tags           = {
        Name       = "ec2-instance"
    }
}