locals {
ami_id = "ami-041e2ea9402c46c32"
sg_id = "sg-0b8c28fdd8f99cc89"
instance_type =var.instance_name == "db" ? "t3.small" : "t3.micro"
tags = {
    Name = "HelloWorld - locals"
  }
}