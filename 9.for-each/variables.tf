
variable instance_names {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform ="true"
    }
}

variable "domain_name" {
    default = "lingaiah.online"
}
#r53 variables
variable "zone_id" {
    default ="Z047580725LSLR6NAAF8G"
}