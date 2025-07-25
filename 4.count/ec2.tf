#resource <resource-type> <resource-name>

resource "aws_instance" "ec2_count" {
  #count = 3
  count = length(var.instance_names)
  ami           = "ami-09c813fb71547fc4f" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_count.id]

  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_security_group" "allow_ssh_count" {
  name        = "allow_ssh"
  description = "allowing SSH Access"

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow_SSH_Count"
    Createdby="Lingaiah"
  }
}