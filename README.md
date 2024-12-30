# Desafío Terraform: Creación de Infraestructura en AWS

Este proyecto crea una infraestructura básica en AWS utilizando Terraform. La infraestructura incluye:

* Una VPC con un bloque CIDR definido.
* Dos subredes dentro de la VPC, cada una con un bloque CIDR específico.
* Dos instancias EC2, una en cada subred, utilizando una AMI de Amazon Linux 2.
* Un Security Group que permite el tráfico SSH, HTTP y HTTPS.

El proyecto utiliza módulos para una mejor organización y reutilización del código, y está diseñado para cumplir con los requisitos del Desafío de Terraform.

## Estructura del Proyecto
```
├── modules
│   ├── ec2
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── network
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── security_group
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── main.tf
└── variables.tf
```

## Descripción de los Módulos

* **`modules/network`**: Define la VPC y las subredes.
    * `main.tf`: Contiene la lógica para crear la VPC y las subredes.
    * `variables.tf`: Define las variables para el CIDR de la VPC y los CIDRs de las subredes.
    * `outputs.tf`: Exporta los IDs de la VPC y las subredes.

* **`modules/security_group`**: Define el Security Group.
    * `main.tf`: Contiene la lógica para crear el Security Group y sus reglas de entrada y salida.
    * `variables.tf`: Define las variables para el nombre y la descripción del Security Group.
    * `outputs.tf`: Exporta el ID del Security Group.

* **`modules/ec2`**: Define las instancias EC2.
    * `main.tf`: Contiene la lógica para crear las instancias EC2, incluyendo el uso de un `data source` para obtener la AMI de Amazon Linux 2.
    * `variables.tf`: Define las variables para el tipo de instancia, los IDs de las subredes, el nombre de la instancia y el ID del Security Group.
    * `outputs.tf`: Exporta los IDs de las instancias EC2.

## Archivo `main.tf`

Este archivo es el punto de entrada principal para la configuración de Terraform. Llama a los módulos y les pasa las variables necesarias.

## Archivo `variables.tf`

Este archivo define las variables globales del proyecto, como la región de AWS, el CIDR de la VPC y el tipo de instancia EC2.

## Despliegue de la Infraestructura

1. **Clonar el repositorio:**

   ```bash
   git clone [https://github.com/tu-usuario/tu-repositorio.git](https://github.com/tu-usuario/tu-repositorio.git)
   cd tu-repositorio

Inicializar Terraform:

```Bash
terraform init
Previsualizar los cambios:
```

```Bash
terraform plan
Aplicar los cambios:
```

```Bash
terraform apply
```

Confirmar la creación: Introduce "yes" cuando se te solicite.

Destrucción de la Infraestructura
Para destruir la infraestructura, ejecuta:

```Bash
terraform destroy
```

## Consideraciones
Free Tier: La infraestructura está diseñada para ser elegible para el Free Tier de AWS.
Seguridad: Se han configurado reglas de firewall básicas, pero se recomienda ajustarlas según las necesidades de seguridad.
Modularidad: Los módulos se pueden reutilizar en otros proyectos.
Variables: Asegúrate de configurar las variables en los archivos variables.tf según tus necesidades.
Credenciales de AWS: Asegúrate de tener configuradas tus credenciales de AWS para que Terraform pueda acceder a tu cuenta.
