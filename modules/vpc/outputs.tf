output "vpc_id" {
  value = aws_vpc.main.id
  description = "ID de la VPC"
}

output "subnet_ids" {
  value = aws_subnet.main.*.id
  description = "Lista de IDs de las subredes"
}