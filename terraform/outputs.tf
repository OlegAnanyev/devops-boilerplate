output "private_ip" {
  value = aws_instance.test_instance.private_ip
}
output "public_ip" {
  value = aws_instance.test_instance.public_ip
}

resource "local_file" "ansible_inventory" {
  content = "[aws]\n${aws_instance.test_instance.public_ip}"
  filename = "ansible_inventory"
}