data "aws_instance" "ec2" {
    depends_on = [
        aws_eks_cluster.eks-cluster,
        aws_eks_node_group.node-group,
        aws_alb.alb,
        aws_lb_listener.listener,
        aws_security_group.sg
    ]

    filter {
        name = "tag:eks:nodegroup-name"
        values = ["NG-tech"]
    }
}