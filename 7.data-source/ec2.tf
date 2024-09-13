#resource <resource-type> <resource-name>

resource "aws_instance" "ec2-data-source" {
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-0ccccafe3d4f0719e"]
  instance_type = "t2.micro"
  tags = {
           Name = "EC2-data-source"
  }
}

