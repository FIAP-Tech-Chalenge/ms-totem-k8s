resource "aws_lb_target_group" "tg" {
  name        = "TG-${var.projectName}"
  port        = 30000
  target_type = "instance"
  protocol    = "HTTP"

  vpc_id = var.vpcId

  health_check {
    path    = "/actuator/health"
    port    = 30000
    matcher = "200"
  }
}

resource "aws_lb_target_group_attachment" "attach" {
  depends_on = [
    aws_lb_target_group.tg,
    aws_eks_cluster.eks-cluster,
    aws_eks_node_group.node-group,
    aws_alb.alb,
    aws_lb_listener.listener,
    aws_security_group.sg
  ]

  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = data.aws_instance.ec2.id
  port             = 30000
}