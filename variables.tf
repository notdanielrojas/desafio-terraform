variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
 type = list(string)
 default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "instance_type" {
 type = string
 default = "t2.micro"
}