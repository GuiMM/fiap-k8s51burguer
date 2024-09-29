//Criando acesso ao cluster
resource "aws_eks_access_entry" "access" {
    cluster_name = aws_eks_cluster.fiap51EksCluster.name
    principal_arn = "arn:aws:iam::${var.arnNumber}:role/voclabs"
    kubernetes_groups = ["fiap-51Burguer","pos-tech"]
    type = "STANDARD"
}