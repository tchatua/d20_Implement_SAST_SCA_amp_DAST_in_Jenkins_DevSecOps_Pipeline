resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins_sg"
  description = "Allow Jenkins Traffic"
  # vpc_id      = "vpc-0daecef147eb74a9d"

  ingress {
    description = "Allow from Personal CIDR block"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    # description = "Allow SSH from Personal CIDR block"
    description = "Allow SSH from Cherry Hill NJ Home"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # cidr_blocks      = [var.cidr_block]
    # cidr_blocks = ["108.24.142.74/32"]
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.project_name}-${var.env}-${var.automation}-create-jenkins-sg"
  }
}




