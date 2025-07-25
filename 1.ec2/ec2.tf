# resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh" { //Here 'allow_ssh' is terraform resource name
  name        = "allow_ssh"
  description = "allowing SSH Access"

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp" #Transmission Control Protocol (TCP)
    cidr_blocks      = ["0.0.0.0/0"] #Classless Inter-Domain Routing 
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  root_block_device {
    volume_size = 50
    volume_type = "gp3"
    iops        = 3000
    encrypted   = true
  }
  tags = { #Here 'allow_ssh','Lingaiah' is the ec2-instance name in AWS, not related to Terrafrom.
    Name = "allow_ssh"
    Createdby="Lingaiah"
  }
}
resource "aws_instance" "create_ec2" { //Here 'db' is terraform resource name
  ami           = "ami-09c813fb71547fc4f" #"ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id] #its is a list type declared in this way [ ]

  tags = {
    Name = "HelloWorld - Create EC2 instance" #Here 'Helloworld-db' is the ec2-instance name in AWS, not related to Terrafrom.
  }
}