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
    "Name" = var.instance_tags
  }
  vpc_security_group_ids = [aws_security_group.acesso_ssh-sa-east-1.id, aws_security_group.acesso_web-sa-east-1.id]
  user_data = file("user-data/ubuntu_server.sh")
}

resource "aws_instance" "dev-us" {
  provider = aws.us-east-1
  # count = 1
  ami = var.amis["us-east-1"]
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = var.instance_tags
  }
  vpc_security_group_ids = [aws_security_group.acesso_ssh-us-east-1.id, aws_security_group.acesso_web-us-east-1.id]
  user_data = file("user-data/ubuntu_server.sh")
}

resource "aws_s3_bucket" "dev-sa" {
  bucket = "teste-dev-sa"
  acl = "private"

  tags = {
    Name = "teste-dev-sa"
  }
}
