resource "aws_security_group" "web-sg" {
  name        = "web-sg"
  description = "Allow TLS inbound traffic"
  #  vpc_id      = aws_vpc.web.id

  ingress {
    description = "from VPC"
    from_port   = var.port_number
    to_port     = var.port_number
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

