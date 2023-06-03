resource "aws_instance" "web" {
  ami                         = "ami-0bef6cc322bfff646"
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.sg_id]

  tags = {
    Name = "HelloWorld"
  }
}