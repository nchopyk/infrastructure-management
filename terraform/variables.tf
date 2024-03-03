variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key_id" {
  type      = string
  sensitive = true
}

variable "aws_secret_access_key" {
  type      = string
  sensitive = true
}

variable "key_pair_name" {
  type    = string
  default = "infrastructure management_for_IT"
}
