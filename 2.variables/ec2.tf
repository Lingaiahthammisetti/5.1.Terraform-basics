
resource "aws_instance" "variables_ec2_instance" {
  ami  = var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = var.tags
  
}
# if you won't give custom security group, it will take default security.
resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

    ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allowed_cidr
  }

  tags = {
    Name = "Allow_SSH_Variables"
    Createdby="Lingaiah"
  }

}