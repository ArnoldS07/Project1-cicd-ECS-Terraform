output "alb_dns" {
  description = "Application URL"
  value       = module.ecs.alb_dns
}

output "completion_message" {
  value = " Successfully completed Terraform apply "
}
