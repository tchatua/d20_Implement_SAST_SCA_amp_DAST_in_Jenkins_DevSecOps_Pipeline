resource "aws_instance" "jenkins" {
  ami                  = data.aws_ami.amazon_linux.id
  instance_type        = "t2.xlarge" # To have a good performance with my Jenkins image
  key_name             = "ohio_key_pair"
  iam_instance_profile = aws_iam_instance_profile.k8s_profile.name
  security_groups      = [aws_security_group.jenkins_sg.name]
  user_data            = file("jenkins_user_data.sh")
  tags = {
    Name = "${var.project_name}-${var.env}-${var.automation}-create-jenkins"
  }
}