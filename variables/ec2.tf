resource "aws_instance" "db" {
    ami = var.ami
    vpc_security_group_ids = [aws_security_group.sg.id]
    instance_type = var.instance_type

    tags = var.tags
}


resource "aws_security_group" "sg" {
    name = var.sg_name
    description = var.description

    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.tcp_protocol
        cidr_blocks      = var.cidr
    }
    egress {
        from_port        = var.port_number
        to_port          = var.port_number
        protocol         = var.protocol
        cidr_blocks      = var.cidr
   }

   tags = var.sg_tags
}


