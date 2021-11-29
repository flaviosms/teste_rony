resource "aws_glue_crawler" "glue_crawler" {
  database_name = var.database_name
  name          = "${local.prefix}-${var.database_name}_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = var.bucket_paths[count.index]
  }

  tags = local.common_tags

}