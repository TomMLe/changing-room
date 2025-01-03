output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "ec2_security_group_id" {
  value = aws_security_group.ec2_sg.id
}
