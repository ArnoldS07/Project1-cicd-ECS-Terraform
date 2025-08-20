output "alb_dns" {
  description = "Application URL"
  value       = aws_lb.app_alb.dns_name
}

output "completion_message" {
  value = " Successfully completed Terraform apply "
}
