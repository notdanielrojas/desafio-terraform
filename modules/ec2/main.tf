resource "aws_instance" "main" {
 count = length(var.subnet_ids)
 ami           = data.aws_ami.latest_amazon_linux.id
 instance_type = var.instance_type
 subnet_id = element(var.subnet_ids, count.index)

 tags = {
   Name = var.instance_name
 }

 vpc_security_group_ids = [var.security_group_id]
}

data "aws_ami" "latest_amazon_linux" {
 most_recent = true

 filter {
   name   = "name"
   values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 }

 filter {
   name   = "virtualization-type"
   values = ["hvm"]
 }

 owners = ["amazon"]
}