#steps: 
# for ec2 creation sg required
# ami id and sg and tags 
# for sg creation, inbound and outbout creation and tags 

resource "aws_instance" "morrisons" {
    #count = 3
    count = length(var.instance_names)
    #ami = var.ami_id
    ami = data.aws_ami.rhel_9_ami.id
    vpc_security_group_ids = [aws_security_group.morrisons_sg.id]

   # instance_type = var.instance_type

    instance_type = var.instance_names[count.index] == "db" ? "t3.small": "t3.micro"
    
    tags = merge(
        {
        Name = var.instance_names[count.index]
        },var.common_tags
        )

  
}


resource "aws_security_group" "morrisons_sg" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cidr_blocks
        
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    tags = {
        Name = "morrisons"
        Terraform = true
        description= "This is morrisons security group"
        project = "morrisons"
    }

  
}
