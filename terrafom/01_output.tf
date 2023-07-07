output "ec2_public_ip" {
    value = aws_instance.master_instance.public_ip
}


output "ec2_private_ip" {
    value = aws_instance.master_instance.private_ip
}
