/*
  Cloudwatch Log-group Definition For Storing The ECS Logs
*/

resource "aws_cloudwatch_log_group" "logs" {
  name              = "/fargate/service/app-${terraform.workspace}"
  retention_in_days = "90"
  tags = merge(
    {
      "Name" : "app-ecs-loggroup-${terraform.workspace}"
  }, var.default_tags)
}
