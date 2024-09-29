resource "aws_eks_cluster" "fiap51EksCluster" {
  name     = "fiap51-eks-cluster"
  role_arn = data.aws_iam_role.fiap51IamRole.arn
  vpc_config {

    subnet_ids = [aws_subnet.subnetA.id, aws_subnet.subnetB.id]
    security_group_ids = [aws_security_group.clusterSG.id]
  }
  tags = {
    Name = var.clusterTag
  }
  access_config {
    authentication_mode = var.accessConfig
  }
}

