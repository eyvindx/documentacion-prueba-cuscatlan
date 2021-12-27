output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint para EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids adjunto al plano control del cluster."
  value       = module.eks.cluster_security_group_id
}

output "kubectl_config" {
  description = "kubectl config generado por el module."
  value       = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  description = "Una configuración de Kubernetes para autenticarse en este clúster de EKS."
  value       = module.eks.config_map_aws_auth
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}
