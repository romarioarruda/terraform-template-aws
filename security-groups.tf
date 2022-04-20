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

resource "aws_security_group" "acesso_web-sa-east-1" {
  provider = aws.sa-east-1
  name = "acesso-web"
  description = "acesso-web"
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_security_group" "acesso_web-us-east-1" {
  provider = aws.us-east-1
  name = "acesso-web"
  description = "acesso-web"
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}