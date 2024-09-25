output "vpc_id" {
  value       = aws_vpc.main.id
  
}

# output "aws_availability_zones" {
#     value = data.aws_availability_zones.available
# }

# output "default_vpc_info" {
#   value = data.aws_vpc.default
# }

# output "main_route_table" {
#   value = data.aws_route_table.main
# }