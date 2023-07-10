resource "aws_instance" "ansibleTest" {
  ami           = "ami-03f65b8614a860c29" # Ubuntu AMI
  instance_type = "t2.micro"
  key_name      = "kifuli"     

  tags = {
    Name = "ansibleTest"
  }
}

