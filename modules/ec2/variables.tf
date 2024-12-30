variable "instance_type" {
  type = string
  description = "Tipo de instancia EC2"
}

variable "subnet_ids" {
  type = list(string)
  description = "Lista de IDs de subredes"
}

variable "instance_name" {
  type = string
  description = "Nombre de la instancia EC2"
}

variable "security_group_id" {
  type = string
  description = "ID del Security Group"
}