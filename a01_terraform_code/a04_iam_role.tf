# This test_role will be attached to the jenkins ec2 instance 
# to make my jenkins ec2 instance beeing able to access my Kubernetes cluster
resource "aws_iam_role" "k8s_access_role" {
  name = "k8s_access_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# Thi iam instance profile will be attched to my jenkins ec2
resource "aws_iam_instance_profile" "k8s_profile" {
  name = "k8s_profile"
  role = aws_iam_role.k8s_access_role.name
}

# Giving full permission to my aws iam role policy 
resource "aws_iam_role_policy" "k8s_policy" {
  name = "k8s_policy"
  role = aws_iam_role.k8s_access_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
     {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
     }
  ]
}
EOF
}
