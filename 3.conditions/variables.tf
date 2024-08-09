
variable "image_id" {
    type =string #optional
    default = "ami-041e2ea9402c46c32" #optional
    description ="RHEL-9 AMI ID"  #optional
}

variable "instance_type" {
    default ="t3.micro"
    type = string
}

variable "instance_name" {
    default = "backend"
}


