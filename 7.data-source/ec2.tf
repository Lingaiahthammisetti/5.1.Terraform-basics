#resource <resource-type> <resource-name>

resource "aws_instance" "ec2-data-source" {
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-06b1b57b365846051"]
  instance_type = "t2.micro"
  tags = {
           Name = "EC2-data-source"
  }
}

