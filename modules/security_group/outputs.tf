output "security_group_id" {
  value = aws_security_group.main.id
  description = "ID del Security Group"
}