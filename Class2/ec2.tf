resource "aws_instance" "web" {
  ami           = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1d"
  subnet_id = "subnet-09509de43ba74ba47"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}


output ec2 {
  value  = aws_instance.web.public_ip
}

