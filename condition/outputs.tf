output "instance_address" {
    value = aws_instance.db
  
}

output "instance_ips" {
    value = aws_instance.db[*].public_ip
  
}

####-----------------------------------------------------------------
# output "instance_address" {
#     value = aws_instance.db[1].public_ip
#     #value = [for i in aws_instance.db : i.public_ip]
#     description = "Required all instances public Ip addresses"

# }

####-----------------------------------------------------------------



# output "instance_ips" {
#      value = { for index, name in var.instance_names : name => aws_instance.db[index].public_ip 
#      }
# }



####-----------------------------------------------------------------

# output "instance_ips" {
#   value = {
#     for index, name in var.instance_names :
#     name => aws_instance.db[index].public_ip
#   }
# }

## here instead of (index) you mention any name
## here instead of (name) word you mention any other name


####------------------------------------------------------------------