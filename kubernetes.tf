# provider "kubernetes" {
#   config_path = "~/.kube/config"
# }
#
# # Recurso para aplicar os arquivos YAML
# resource "null_resource" "apply_k8s" {
#   provisioner "local-exec" {
#     command = "kubectl apply -f ./k8s/"
#   }
#
#   # Configurar a dependência para garantir que todos os passos anteriores sejam concluídos
#   depends_on = [
#     aws_eks_cluster.eks-cluster,
#     aws_eks_node_group.node-group,
#     aws_alb.alb,
#     aws_lb_listener.listener,
#     aws_security_group.sg
#   ]
# }
#
# # Recurso para garantir que o recurso seja aplicado sempre que houver uma mudança
# resource "local_file" "trigger" {
#   content  = filemd5("k8s/kustomization.yaml")
#   filename = "${path.module}/trigger.txt"
# }
#
