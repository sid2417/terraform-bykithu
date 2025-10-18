resource "aws_route53_record" "morrisons" {
    count = length(var.instance_names)
    zone_id = data.aws_route53_zone.aws_zone.id
    #zone_id = "Z02762202XEVMYQ5T1S7K"
    #name = "kithusdairy.fun"
    name = "${var.instance_names[count.index]}.kithusdairy.fun"
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.morrisons[count.index].public_ip] : [aws_instance.morrisons[count.index].private_ip]
    type = "A"
    ttl = 1

    # records = [aws_instance.morrisons[count.index].public_ip]  ## This line for all the records  adding public ip only
    allow_overwrite = true  ## this is mandatorly we mention otherwise it will throw error records are alredy created..
    depends_on = [aws_instance.morrisons]
    
    # for first time creation "allow_overwrite" is not required, but it is recommanded everytime, for avoiding error

  
}