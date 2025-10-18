data "aws_ami" "morrisons-ami" {
    most_recent = true
    owners = ["973714476881"]

    filter {
      name = "state"
      values = ["available"]
    }
    
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

   
}

data "aws_route53_zone" "zone_info" {
    name = "kithusdairy.fun."
    private_zone = false
  
}