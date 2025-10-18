data "aws_ami" "rhel_9_ami" {
    most_recent = true
    owners = ["973714476881"]


    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]

    }

    # filter {
    #   name = "root_device_type"
    #   values = ["ebs"]
      
    # }
    # filter {
    # name   = "name"                    # <-- must be literally "name"
    # values = ["RHEL-9-DevOps-Practice*"]  # <-- wildcard is here, in the value
    # }


    # filter {
    # name   = "RHEL-9-DevOps-Practice*"  # add wildcard if versions vary
    # values = ["RHEL-9-DevOps-Practice*"]
    # }
     
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

    filter {
      name = "state"
      values = ["available"]
    }
  
}


data "aws_route53_zone" "aws_zone" {

    name = "kithusdairy.fun."  ## trailing dot required
    private_zone = false

  
}