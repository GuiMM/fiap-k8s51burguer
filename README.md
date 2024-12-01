# fiap-k8s51burguer

# execução por PIPE
1. Passo 1 - Criar Bucket S3 51burguer-eks-backend-tf na AWS
 - aws s3api create-bucket --bucket 51burguer-eks-backend-tf --region us-east-1 
2. pegar arnNumber e cadastrar na secret



# local
1. Passo 1 - Criar Bucket S3 51burguer-eks-backend-tf na AWS
 - aws s3api create-bucket --bucket 51burguer-eks-backend-tf --region us-east-1
2. Execute: terraform plan -input=false -var="arnNumber=id_da_conta"
3. Execute: terraform apply -input=false -var="arnNumber=id_da_conta"
4. ao terminar: terraform destroy -input=false -var="arnNumber=id_da_conta"


ex:
terraform plan -input=false -var="arnNumber=375275125343"
terraform apply -input=false -var="arnNumber=375275125343"
