data "template_file" "ec2_user_data" {
  template = file("${path.module}/installdocker.sh")
}

resource "aws_instance" "ec201" {
  ami                         = var.firstec2_ami
  instance_type               = var.firstec2_type
  associate_public_ip_address = true
  availability_zone           = var.firstec2_az
  vpc_security_group_ids      = [aws_security_group.firstsg.id]
  subnet_id                   = aws_subnet.pub1.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.firstec2_mytagname
  }
}

resource "aws_instance" "secondec2" {
  ami                         = var.secondec2_ami
  instance_type               = var.secondec2_type
  associate_public_ip_address = true
  availability_zone           = var.secondec2_az
  vpc_security_group_ids      = [aws_security_group.firstsg.id]
  subnet_id                   = aws_subnet.pub2.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.secondec2_mytagname
  }
}   