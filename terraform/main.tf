resource "aws_instance" "ansibleTest" {
  ami           = "ami-03f65b8614a860c29" # Ubuntu AMI
  instance_type = "t2.micro"
  key_name      = "kifuli"
  subnet_id     = aws_subnet.app_sbnt.id     
  security_groups = aws_security_group.app_security_group.id
  tags = {
    Name = "ansibleTest"
  }
}

