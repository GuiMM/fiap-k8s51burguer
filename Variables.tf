variable "projectName" {
  default = "51Burguer"
}

variable "accessConfig" {
  type = string
  default = "API_AND_CONFIG_MAP"
}

variable "clusterName" {
  type = string
  default = "clusterEks51Burguer"
}

variable "instanceNodeType" {
  default = "t3.medium"
}

//teremos que passar via secret
variable "arnNumber" {
}

variable "policyAccessCluster" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "clusterTag" {
  default = "My51BurguerEksCluster"
}

