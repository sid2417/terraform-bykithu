resource "aws_security_group" "morrisons" {
    name = "morrisons"
    description = "handling project using foreach loop"

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

    tags = merge(
        {
      Name = "morrisons_sg"
      createdby = "kithu"
      }, var.common_tags)
  
}