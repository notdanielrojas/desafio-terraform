resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
 count = length(var.subnet_cidrs)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.subnet_cidrs, count.index)
}