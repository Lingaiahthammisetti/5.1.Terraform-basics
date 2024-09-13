
output "vpc_id" {
    value = data.aws_vpc.default.id
}
output "vpc_owner_id" {
    value = data.aws_vpc.default.owner_id
}
output "public_ip" {
    value = aws_instance.ec2-data-source.public_ip
}
output "private_ip" {
    value = aws_instance.ec2-data-source.private_ip
}
output "security_group" {
    value = aws_instance.ec2-data-source.vpc_security_group_ids
}
output "ami_id" {
    value = aws_instance.ec2-data-source.ami
}
output "subnet_id" {
    value = aws_instance.ec2-data-source.subnet_id
}