
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


## EC2 variables ::

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

variable "instance_names" {
    default = ["db","backend","frontend"]
    type = list(string)
  
}


## r53 variables ::

variable "domain" {
    default = "kithusdairy.fun"
    type = string
      
}

