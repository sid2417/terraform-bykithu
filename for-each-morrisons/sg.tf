resource "aws_security_group" "morrisons" {
    name = "morrisons"
    description = "handling project using foreach loop"

    dynamic "ingress" {
      for_each = var.inbound_rules
      content {
        from_port = ingress.value["from_port"] #  ["from_port"] list notation also valid
        to_port = ingress.value.to_port
        protocol = ingress.value.protocol   # .protocol  # .notation also valid
        cidr_blocks = ingress.value["cidr_blocks"]

      }
      
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