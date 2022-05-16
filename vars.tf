variable "amis" {
  default = {
    "sa-east-1" = "ami-090006f29ecb2d79a"
    "us-east-1" = "ami-04505e74c0741db8d"
  }
}

variable "public_ip" {
  default = "0.0.0.0"
}

variable "instance_tags" {
  default = "ubuntu_20_04"
}

variable "ips_com_acesso_ssh_permitido" {
  default = ["0.0.0.0/32"]
}

variable "key_name" {
  default = "terraform-aws"
}

variable "instance_type" {
  default = "t2.micro"
}
