variable "aws_region" {
  description = "AWS Region"
  type = string
}

variable "name" {
  description = "Cluster name"
  type = string
}

variable "vpc_cidr" {
  description = "vpc cidr"
  type = string
}

variable "azs" {
  description = "Availability zones"
  type = list(string)
}

variable "public_subnets" {
  description = "Public subnets"
  type = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type = list(string)
}
variable "intra_subnets" {
  description = "Intra subnets"
  type = list(string)
}

variable "instance_types" {
  description = "Instance types"
  type = list(string)
}
