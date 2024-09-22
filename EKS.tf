resource "aws_eks_cluster" "fiap51EksCluster" {
  name     = "fiap51-eks-cluster"
  role_arn = data.aws_iam_role.fiap51IamRole.arn
  vpc_config {

    subnet_ids = [aws_subnet.privateSubnetA.id, aws_subnet.privateSubnetB.id]
  }
  tags = {
    Name = "My51BurguerEksCluster"
  }
}

data "aws_iam_role" "fiap51IamRole" {
  name = "LabRole"
}