resource "aws_instance" "morrisons" {
    
    for_each = var.instance_names
    ami = data.aws_ami.morrisons-ami.id
   
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.morrisons.id]

    tags = merge(
        {
        Name = each.key
        createdby = "Kithu"
        },var.common_tags
      )
  
}

### ami = "ami-09c813fb71547fc4f"