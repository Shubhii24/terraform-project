variable "name_prefix" {
  type = string
}

variable "image_id" {
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = ""
}
variable "desired_capacity" {
  type = number
  default = 1
}
variable "max_size" {
  type = number
  default = 1
}
variable "min_size" {
  type = number
  default = 1
}
 variable "subnet_id" {
   
   type = list(string)
   default = ["arn:aws:ec2:us-east-1:466548314234:subnet/subnet-0e3dc716adf9b5363" ]
 }

variable "security_group_id" {
    type = string
    default = ""
  
}
variable "cidr_ipv4" {
  type = number
  default = 0
}

variable "cidr_ipv6" {
  type = number
  default = 0
}

variable "ip_protocol" {
    type = string
   default = ""
}

/*variable "availability_zones" { 
 type = list(string)
  
}*/