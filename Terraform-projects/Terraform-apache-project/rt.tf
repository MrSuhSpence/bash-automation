resource "aws_route_table" "routetable1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.first_rt_cidrblock
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.first_rt_name
  }
}

resource "aws_route_table" "routetable2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.second_rt_cidrblock
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.second_rt_name
  }
}