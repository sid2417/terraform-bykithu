output "r53_record_names" {
    value = aws_route53_record.morrisons[*].name # here * for all instances in a loop
  
}


output "aws_instance_public_addresses" {
    value = aws_instance.morrisons[*].public_ip
  
}

output "aws_instance_private_addresses" {
    value = aws_instance.morrisons[*].private_ip
  
}


output "security_group" {
    value = aws_security_group.morrisons_sg.id
  
}

output "ami_id" {
    value = data.aws_ami.rhel_9_ami.id
  
}

output "zone_id" {
    value = data.aws_route53_zone.aws_zone.id
  
}