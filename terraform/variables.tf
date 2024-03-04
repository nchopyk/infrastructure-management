variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key_id" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}

variable "key_pair_name" {
  type    = string
  default = "infrastructure management_for_IT"
}
