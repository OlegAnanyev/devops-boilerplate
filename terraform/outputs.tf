output "private_ip" {
  value = aws_instance.devops_instance.private_ip
}
output "public_ip" {
  value = aws_instance.devops_instance.public_ip
}

resource "local_file" "ansible_inventory" {
  content = "  [aws]\n  ${aws_instance.devops_instance.tags.Name} ansible_host=${aws_instance.devops_instance.public_ip} ansible_user=ubuntu  "
  filename = "ansible_inventory"
}


 #aws_instance_1     ansible_host=13.48.137.96     ansible_user=ubuntu