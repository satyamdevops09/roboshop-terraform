resource "aws_iam_role" "main" {
  name = var.is_true ? "${var.name}-ec2-role" : "${var.name}-${var.env}-ec2-role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
})

 
}

resource "aws_iam_instance_profile" "main" {
  name = var.is_true ? "${var.name}-ec2-role" : "${var.name}-${var.env}-ec2-role"
  role = aws_iam_role.main.name
}