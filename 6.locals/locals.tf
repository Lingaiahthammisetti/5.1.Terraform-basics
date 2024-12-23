locals {
ami_id = "ami-09c813fb71547fc4f"
sg_id = "sg-06b1b57b365846051"
instance_type =var.instance_name == "db" ? "t3.small" : "t3.micro"
tags = {
    Name = "HelloWorld - locals"
  }
}