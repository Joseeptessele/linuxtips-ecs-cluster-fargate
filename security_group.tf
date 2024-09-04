# security group for ec2 nodes
resource "aws_security_group" "main" {
  name = format("%s", var.project_name)

  vpc_id = data.aws_ssm_parameter.vpc.value

  egress {
    from_port = 0
    to_port   = 0
    #all protocols
    protocol = "-1"
    #should set to vcp range
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

resource "aws_security_group_rule" "subnet_ranges" {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  type              = "ingress"
  description       = "Set traffic for VPC"
  security_group_id = aws_security_group.main.id
  # vpc range
  cidr_blocks = ["10.0.0.0/16"]
}
