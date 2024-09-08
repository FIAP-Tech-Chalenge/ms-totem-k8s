variable "regionDefault" {
  default = "us-east-1"
}

variable "labRole" {
  default = "arn:aws:iam::964124800382:role/LabRole"
}

variable "projectName" {
  default = "tech"
}

variable "subnetA" {
  default = "subnet-01b0806ee05739c86"
}

variable "subnetB" {
  default = "subnet-051aee4b3b1074344"
}

variable "subnetC" {
  default = "subnet-059cf475652425736"
}

variable "vpcId" {
  default = "vpc-08ee1cdb9cb41060f"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::964124800382:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "aws_access_key_id" {
  description = "AWS access key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  type        = string
}

variable "aws_session_token" {
  description = "AWS Session Token"
  type        = string
}


