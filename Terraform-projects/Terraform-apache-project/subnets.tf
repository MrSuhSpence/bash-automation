resource "aws_subnet" "pub1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.firstcidr_block
  availability_zone = var.firstsubnet_az

  tags = {
    Name = var.first_subnet_name
  }
}

resource "aws_subnet" "pub2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.second_subnet_cidrblock
  availability_zone = var.second_subnet_az

  tags = {
    Name = var.second_subnet_name
  }
}