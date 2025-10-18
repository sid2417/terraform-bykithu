output "ami_info" {
    value = aws_instance.morrisons
  
}

output "ami_id" {
    value = data.aws_ami.morrisons-ami.id
  
}

output "public_ip" {
    value = aws_instance.morrisons[*].public_ip
  
}

output "private_ip" {
    value = aws_instance.morrisons[*].private_ip
  
}

output "security_group" {
    value = aws_security_group.morrisons.id
  
}

output "zone_id" {
    value = data.aws_route53_zone.zone_info.id
  
}