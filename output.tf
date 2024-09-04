output "load_balancer_dns" {
  description = "load balancer dns"
  value       = aws_lb.main.dns_name
}

output "lb_ssm_arn" {
  description = "load balancer arn"
  value       = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  description = "load balancer listener id"
  value       = aws_ssm_parameter.lb_listener.id
}