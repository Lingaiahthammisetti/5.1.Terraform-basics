output "public_ip" {
    value = aws_instance.conditions.public_ip
}
output "private_ip" {
    value = aws_instance.conditions.private_ip
}
output "security_group" {
    value = aws_instance.conditions.vpc_security_group_ids
}
output "ami_id" {
    value = aws_instance.conditions.ami
}
output "subnet_id" {
    value = aws_instance.conditions.subnet_id
}

