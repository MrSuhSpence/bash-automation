data "template_file" "ec2_user_data" {
  template = file("${path.module}/installapache.sh")
}

resource "aws_instance" "ec201" {
  ami                         = var.ec201_ami
  instance_type               = var.ec201_type
  associate_public_ip_address = true
  availability_zone           = var.ec201_az
  vpc_security_group_ids      = [aws_security_group.sg01.id]
  subnet_id                   = aws_subnet.pub1.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.ec201_tagname
  }
}

resource "aws_instance" "ec202" {
  ami                         = var.ec202_ami
  instance_type               = var.ec202_type
  associate_public_ip_address = true
  availability_zone           = var.ec202_az
  vpc_security_group_ids      = [aws_security_group.sg01.id]
  subnet_id                   = aws_subnet.pub2.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.ec202_tagname
  }
}   