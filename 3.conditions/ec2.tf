resource "aws_instance" "conditions" {
  ami  = var.image_id
  instance_type = var.instance_name =="db" ? "t3.small": "t3.micro"
  tags = {
    Name = "Helloworld-EC2-Conditions"
    Createdby="Lingaiah"
  }
}

