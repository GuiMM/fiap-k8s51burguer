variable "nome_repositorio" {
  type = string
  default = "Repository51Burguer"
}

variable "cluster_name" {
  type = string
  default = "clusterEks51Burguer"
}

variable "aws_iam_role"{
  type = string
  default = "arn:aws:iam::375275125343:role/LabRole"
}