variable "ami" {
    default = "ami-09c813fb71547fc4f"
    type = string
  
}

variable "instance_type" {
    default = "t3.micro"
    type = string
     
}

variable "tags" {
    default = {
        Name = "db",
        Project = "morrisons",
        Environmet = "dev",
        Terrform = true
    }

    type = map(string)
  
}

variable "sg_name" {
    default = "sg"
    type = string
 
}

variable "description" {
    default = "Allow inbound and outbound traffic"
    type = string
  
}

variable "port_number" {
    default = 0
    type = number
  
}

variable "protocol" {
    default = "-1"
    type = number  
}

variable "cidr" {
    default = ["0.0.0.0/0"] 
    type = list(string)
     
}

variable "sg_tags" {
    default = {
    Name = "terra_sg",
    }
    type = map(string)
}

variable "ssh_port" {
    default = 22
    type = number
  
}

variable "tcp_protocol" {
    default = "tcp"

  
}