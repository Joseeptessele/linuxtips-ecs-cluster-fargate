resource "aws_ecs_cluster" "main" {
  name = var.project_name

  setting {
    # enhance cloudwatch metrics for observaility
    name  = "containerInsights"
    value = "enabled"
  }
}