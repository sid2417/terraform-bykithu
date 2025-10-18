resource "aws_route53_record" "morrisons_records" {
    for_each = var.instance_names
    zone_id = data.aws_route53_zone.zone_info.id
    name = each.key == "frontend" ?  var.domain : "${each.key}.${var.domain}"
    type = "A"
    ttl = 1
    records = each.key == "frontend" ? [aws_instance.morrisons[each.key].public_ip] : [aws_instance.morrisons[each.key].private_ip] 
  
}


## zone_id = "Z02762202XEVMYQ5T1S7K"