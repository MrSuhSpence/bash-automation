resource "aws_vpc" "main" {
  cidr_block       = var.myvpc_cidrblock
  instance_tenancy = var.myinstance_tenancy

  tags = {
    Name = var.mytag_name
  }
}