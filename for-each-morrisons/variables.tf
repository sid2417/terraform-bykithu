
## SG variables ::

variable "sg_name" {
    default = "morrisons"
    type = string
}

variable "sg_description" {
    default = "handling project using foreach loop"
    type = string
  
}

variable "common_tags" {
    default = {
        project = "morrisons"
        Environment = "dev"
        Terraform = true
    }
}

variable "inbound_rules" {
    default = [
        {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        },
        {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        },
        {
        from_port        = 8080
        to_port          = 8080
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        },
        {
        from_port        = 3306
        to_port          = 3306
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        }
        ]
    type = list(object({
      from_port = number
      to_port = number
      protocol = string
      cidr_blocks = list(string)

    }))

    
  
}


## EC2 variables ::

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

# variable "instance_names" {
#     default = ["db","backend","frontend"]
#     type = list(string)
  
# }

variable "instance_names" {

    default = {
        db = "t3.medium"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
    type = map(string)
    
}



## r53 variables ::

variable "domain" {
    default = "kithusdairy.fun"
    type = string
      
}

