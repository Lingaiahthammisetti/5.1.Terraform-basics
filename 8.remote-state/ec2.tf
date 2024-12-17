#resource <resource-type> <resource-name>

resource "aws_instance" "ec2-remote-state" {
  ami           =  "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0ccccafe3d4f0719e"]

  tags = {
    Name = "Hello-Ec2-Remote-State"
  }
}

