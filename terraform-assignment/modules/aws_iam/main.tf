resource "aws_iam_role" "eks_role" {
  name = var.name

  assume_role_policy = jsonencode(var.role_policy)
}

resource "aws_iam_policy_attachment" "eks_role_attachment" {
  name       = var.policy_name
  roles      = [aws_iam_role.eks_role.name]
  policy_arn = var.policy_arn
}
