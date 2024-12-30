output "ec2_ids" {
  value = aws_instance.main.*.id
  description = "Lista de IDs de las instancias EC2"
}