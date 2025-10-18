resource "aws_route53_record" "morrisons_records" {
    count = length(var.instance_names)
    zone_id = data.aws_route53_zone.zone_info.id
    name = var.instance_names[count.index] == "frontend" ? var.domain : "${var.instance_names[count.index]}.${var.domain}"
    type = "A"
    ttl = 1
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.morrisons[count.index].public_ip] : [aws_instance.morrisons[count.index].private_ip]
  
}


## zone_id = "Z02762202XEVMYQ5T1S7K"