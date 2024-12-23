#resource <resource-type> <resource-name>

resource "aws_instance" "ec2-remote-state" {
  ami           =  "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-06b1b57b365846051"]

  tags = {
    Name = "Hello-Ec2-Remote-State"
  }
}

