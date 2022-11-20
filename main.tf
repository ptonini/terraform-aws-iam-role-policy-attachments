resource "aws_iam_role_policy_attachment" "this" {
  for_each = {for i, v in var.policy_arns : i => v}
  role = var.role
  policy_arn = each.value
}
