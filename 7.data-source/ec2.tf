#resource <resource-type> <resource-name>

resource "aws_instance" "db" {
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-0b8c28fdd8f99cc89"]
  instance_type = "t3.micro"
  tags = {
           Name = "data-source-practice"
  }
}

