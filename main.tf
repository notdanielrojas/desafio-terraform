module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}

module "security_group" {
  source = "./modules/security_group"
  security_group_name = "terraform-sec-group"
  security_group_description = "Security group para instancias EC2"
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  subnet_ids = module.vpc.subnet_ids
  instance_name = "ec2-instance"
  security_group_id = module.security_group.security_group_id
}