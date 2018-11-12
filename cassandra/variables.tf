variable "aws_region" {
    description = "Regiao da VPC"
    default = "us-east-1"
}

variable "name" {
  default = "Cassandra"
}

variable "instance_type" {
  default = "r4.large"
}

variable "key_name" {
  default = "bona"
}
variable "sec_group_id" {
  default = "sg-26175"
}

variable "ami_id" {
  default = "ami-9887c6e7"
}
