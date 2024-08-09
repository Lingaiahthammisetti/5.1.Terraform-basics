locals {
ami_id = "ami-041e2ea9402c46c32"
sg_id = "sg-0b35c64f66b53871f"
instance_type =var.instance_name == "db" ? "t3.small" : "t3.micro"
tags = {
    Name = "locals"
  }
}