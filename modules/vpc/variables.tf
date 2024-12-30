variable "vpc_cidr" {
  type = string
  description = "CIDR block para la VPC"
}

variable "subnet_cidrs" {
 type = list(string)
 description = "Lista de CIDR blocks para las subredes"
}