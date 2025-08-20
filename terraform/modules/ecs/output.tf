
output "alb_dns" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}
