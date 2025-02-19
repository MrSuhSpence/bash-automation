variable "AWSregion" {
  type        = string
  description = "aws region"
  default     = "us-east-1"
}

variable "myvpc_cidrblock" {
  type        = string
  description = "the cidr block for the vpc"
  default     = "10.0.0.0/16"
}

variable "myinstance_tenancy" {
  type        = string
  description = "instance tenancy"
  default     = "default"
}

variable "mytag_name" {
  type        = string
  description = "tag name"
  default     = "terraformvpc"
}

variable "firstcidr_block" {
  type        = string
  description = "subnet_cidrblock"
  default     = "10.0.0.0/24"
}

variable "firstsubnet_az" {
  type        = string
  description = "availability zone"
  default     = "us-east-1a"
}

variable "mysubnet_cidrblock" {
  type        = string
  description = "cidr block"
  default     = "10.0.0.0/24"
}

variable "second_subnet_name" {
  type        = string
  description = "Terraform subnet name"
  default     = "Terraform-public-02"
}

variable "first_subnet_name" {
  type        = string
  description = "subnet_name1"
  default     = "Terraform-public-01"
}

variable "second_subnet_cidrblock" {
  type        = string
  description = "Terraform cidrblock02"
  default     = "10.0.1.0/24"
}

variable "second_subnet_az" {
  type        = string
  description = "subnet availability zone"
  default     = "us-east-1b"
}

variable "myterraform_igw" {
  type        = string
  description = "terraform internet gateway"
  default     = "terraformigw"
}

variable "first_rt_cidrblock" {
  type        = string
  description = "routing table cidrblock 01"
  default     = "0.0.0.0/0"
}

variable "first_rt_name" {
  type        = string
  description = "routing table tag name01"
  default     = "terraformrt01"
}

variable "second_rt_cidrblock" {
  type        = string
  description = "routing table cidrblock02"
  default     = "0.0.0.0/0"
}

variable "second_rt_name" {
  type        = string
  description = "routing table tag name02"
  default     = "terraformrt02"
}

variable "firstsg_name" {
  type        = string
  description = "security group name01"
  default     = "allow_tls"
}

variable "firstsg_description" {
  type        = string
  description = "security group1 description"
  default     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "firstsg_name" {
  type        = string
  description = "securitygroup01 tag name"
  default     = "securitygroup01"
}

variable "firstsg" {
  type        = string
  description = "securitygroup01 tag name"
  default     = "securitygroup01"
}

variable "sg_cidrblockport443" {
  type        = string
  description = "securitygroup for port 443"
  default     = "0.0.0.0/0"
}

variable "ip_443" {
  type        = string
  description = "ip for port 443"
  default     = "tcp"
}

variable "cidr_22" {
  type        = string
  description = "cidrblock for port 22 "
  default     = "0.0.0.0/0"
}

variable "ip_22" {
  type        = string
  description = "ip for port 22 "
  default     = "tcp"
}

variable "cidr_80" {
  type        = string
  description = "cidrblock for port 80 "
  default     = "0.0.0.0/0"
}

variable "ip_80" {
  type        = string
  description = "ip for port 80 "
  default     = "tcp"
}

variable "cidr_ipv4" {
  type        = string
  description = "cidrblock for ipv4"
  default     = "0.0.0.0/0"
}

variable "ip_ipv4" {
  type        = string
  description = "ip for ipv4"
  default     = "-1"
}

variable "firstec2_ami" {
  type        = string
  description = "ec201 ami"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "firstec2_type" {
  type        = string
  description = "ec201 instance type"
  default     = "t2.micro"
}

variable "firstec2_az" {
  type        = string
  description = "ec201 az"
  default     = "us-east-1a"
}

variable "firstec2_mytagname" {
  type        = string
  description = "ec201 tag name"
  default     = "terraform_ec2"
}

variable "secondec2_ami" {
  type        = string
  description = "ec202 ami"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "secondec2_type" {
  type        = string
  description = "ec202 instance type"
  default     = "t2.micro"
}

variable "secondec2_az" {
  type        = string
  description = "ec202 az"
  default     = "us-east-1b"
}

variable "secondec2_mytagname" {
  type        = string
  description = "ec202 tag name"
  default     = "terraform_ec202"
} 