data "aws_availability_zones" "available_zones" {
  state = "available"
  
}

# output "availability_zones" {
#   value = data.aws_availability_zones.available_zones.names
# }


data "aws_region" "current" {}

data "aws_caller_identity" "current" {}
