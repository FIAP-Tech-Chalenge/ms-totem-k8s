data "aws_security_group" "existing_sg" {

  depends_on = [
    aws_lb_target_group.tg,
    aws_eks_cluster.eks-cluster,
    aws_eks_node_group.node-group,
    aws_alb.alb,
    aws_lb_listener.listener,
    aws_security_group.sg
  ]

  filter {
    name   = "group-name"
    values = ["eks-cluster-sg-tech-3555990"]
  }
}

resource "aws_security_group_rule" "ingress_rule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = data.aws_security_group.existing_sg.id
}