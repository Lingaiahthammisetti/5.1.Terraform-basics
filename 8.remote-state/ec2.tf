#resource <resource-type> <resource-name>

resource "aws_instance" "db" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0b35c64f66b53871f"]

  tags = {
    Name = "HelloWorld-db"
  }
}

