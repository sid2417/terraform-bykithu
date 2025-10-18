resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.sg.id]
    instance_type = "t3.micro"

    tags = {
        Name = var.instance_names[count.index]
        Project = "morrisons"
        Environmet = "dev"

    }
}

resource "aws_security_group" "sg" {
    name = "sg"
    description = "Allow inbound and outbound traffic"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0 
        to_port          = 0
        protocol         = "-1" 
        cidr_blocks      = ["0.0.0.0/0"] 
   }

   tags = {
    Name = "terra_sg"
  }
}


