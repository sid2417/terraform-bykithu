## EC2 instance variables

variable "instance_names" {
    default = ["db","backend","frontend"]
    type = list(string)
  
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
  
}

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

variable "common_tags" {
    default = {
        Project = "morrisons"
        Environment = "dev"
        Terraform = true
    }

    type = map(string)
  
}

## security group variables ::

variable "sg_name" {
    default = "morrisons_sg"
    type = string
  
}

variable "sg_description" {
    default = "allowing inboud and outbound traffic"
    type = string
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
  
}

## route53 variables

variable "domain_name" {
    default = "kithusdairy.fun"
    type = string
  
}
