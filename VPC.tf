
#1.Cria VPC
resource "aws_vpc" "fiap51Vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "My51BurguerVPC"
  }
}

#Cria 2 subnets 
resource "aws_subnet" "privateSubnetA" {
  vpc_id            = aws_vpc.fiap51Vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.1.0/24"
}
resource "aws_subnet" "privateSubnetB" {
  vpc_id            = aws_vpc.fiap51Vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.2.0/24"
}

#2 : create IGW
resource "aws_internet_gateway" "myIgw" {
  vpc_id = aws_vpc.fiap51Vpc.id
}

#3 : route Tables for public subnet
resource "aws_route_table" "privateRTApp" {
  vpc_id = aws_vpc.fiap51Vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myIgw.id
  }
}

#4 : route table association public subnet 
resource "aws_route_table_association" "publicRTAssociationA" {
  subnet_id      = aws_subnet.privateSubnetA.id
  route_table_id = aws_route_table.privateRTApp.id
}

resource "aws_route_table_association" "publicRTAssociationB" {
  subnet_id      = aws_subnet.privateSubnetB.id
  route_table_id = aws_route_table.privateRTApp.id
}

