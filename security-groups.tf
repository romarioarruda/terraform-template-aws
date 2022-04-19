resource "aws_security_group" "acesso_ssh-sa-east-1" {
  provider = aws.sa-east-1
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.ips_com_acesso_ssh_permitido
  }

  tags = {
    Name = "tag-acesso-ssh"
  }
}

resource "aws_security_group" "acesso_ssh-us-east-1" {
  provider = aws.us-east-1
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.ips_com_acesso_ssh_permitido
  }

  tags = {
    Name = "tag-acesso-ssh"
  }
}