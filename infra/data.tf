data "aws_availability_zones" "available_zones" {
  state = "available"
  
}

output "availability_zones" {
  value = data.aws_availability_zones.available_zones.names
}
