# locals {
#     count = length(var.instance_names)
#     domain_names = "${var.instance_names[count.index]}.kithusdairy.fun"
#     records =  var.instance_names[count.index] == "frontend" ? [aws_instance.morrisons[count.index].public_ip] : [aws_instance.morrisons[count.index].private_ip]

# }



# count and count.index will not work in locals