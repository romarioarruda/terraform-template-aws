provider "aws" {
  alias = "sa-east-1"
  region = "sa-east-1"
}

provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

resource "aws_instance" "dev-sa" {
  provider = aws.sa-east-1
  # count = 1
  ami = var.amis["sa-east-1"]
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = "ubuntu_20_04/1"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh-sa-east-1.id}"]
}

resource "aws_instance" "dev-us" {
  provider = aws.us-east-1
  # count = 1
  ami = var.amis["us-east-1"]
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = "ubuntu_20_04/1"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh-us-east-1.id}"]
}

resource "aws_s3_bucket" "dev-sa" {
  bucket = "teste-dev-sa"
  acl = "private"

  tags = {
    Name = "teste-dev-sa"
  }
}
