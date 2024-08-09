#1 command line
#2. tfvars 
#3. Environment variable
#4. variable defaultvalue

variable "image_id" {
    type =string #optional
    default = "ami-041e2ea9402c46c32" #optional
    description ="RHEL-9 AMI ID"  #optional
}

variable "instance_type" {
    #default ="t2.micro"
    type = string
}

variable "tags" {
    default = {
        Project ="Expense"
        Environment ="Dev"
        Module ="DB"
        Name = "DB server"   
    }

}
variable "sg_name" {
    type = string
    default = "allow_ssh"
 }

 variable "sg_description" {
    type = string
    default ="allowing port 22"
 }

 variable "ssh_port" {
    type = number
    default =22
 }

variable "protocol"{
    type = string
    default ="tcp"
}

variable "allowed_cidr" {
    type=list(string)
    default =["0.0.0.0/0"]

}











