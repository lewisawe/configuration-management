output "ansible_public_ip" {
    value = aws_instance.ansibleTest.public_ip
}


output "ansible_private_ip" {
    value = aws_instance.ansibleTest.private_ip
}