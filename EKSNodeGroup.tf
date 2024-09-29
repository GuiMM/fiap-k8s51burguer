resource "aws_eks_node_group" "fiap51BurguerNode" {
  cluster_name    = aws_eks_cluster.fiap51EksCluster.name
  node_group_name = "${var.projectName}-node"
  node_role_arn   = data.aws_iam_role.fiap51IamRole.arn
  subnet_ids      = [aws_subnet.subnetA.id,aws_subnet.subnetB.id]
  disk_size = 50
  instance_types = [var.instanceNodeType]


  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

 
}