provider "aws" {
  alias = "sa-east-1"
  region = "sa-east-1"
}

resource "aws_instance" "dev-sa" {
  provider = aws.sa-east-1
  # count = 1
  ami = var.amis["sa-east-1"]
  instance_type = var.instance_type
  key_name = var.key_name
  
  root_block_device {
    volume_size = 60 //disk volume in GB
  }
  
  user_data = file("user-data/ubuntu_server.sh")
  
  vpc_security_group_ids = [
    aws_security_group.acesso_ssh-sa-east-1.id,
    aws_security_group.acesso_web-sa-east-1.id
  ]
  
  tags = {
    "Name" = var.instance_tags
  }
}

resource "aws_eip_association" "dev-sa-eip" {
  instance_id   = aws_instance.dev-sa.id
  public_ip = var.public_ip
}
