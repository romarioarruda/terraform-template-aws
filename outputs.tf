output "dev-sa" {
  value = aws_instance.dev-sa.public_ip
}

output "dev-us" {
  value = aws_instance.dev-us.public_ip
}