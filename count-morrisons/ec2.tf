resource "aws_instance" "morrisons" {
    count = length(var.instance_names)
    ami = data.aws_ami.morrisons-ami.id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.morrisons.id]

    tags = merge(
        {
        Name = var.instance_names[count.index]
        createdby = "Kithu"
        },var.common_tags
      )
  
}

### ami = "ami-09c813fb71547fc4f"