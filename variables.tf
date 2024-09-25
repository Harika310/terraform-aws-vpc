variable "project_name" {
    type  = string
}

variable "environment" {
    type = string
}
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    default = true
}

variable "common_tags" {
    default = {
   }
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs)== 2
        error_message = "please provide 2 valid subnets CIDR"
    }
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs)== 2
        error_message = "please provide 2 valid subnets CIDR"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs)== 2
        error_message = "please provide 2 valid subnets CIDR"
    }
}

variable "database_subnet_tags" {
    default = {}
}


variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = { }
}

variable "private_route_table_tags" {
    default = { }
}

variable "database_route_table_tags" {
    default = { }
}


variable "is_peering_required" {
    type = bool
    default = false
}

variable "vpc_peering_tags" {
    default = { }
}

