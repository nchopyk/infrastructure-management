#
#data "cloudinit_config" "instance_config" {
#  gzip          = false
#  base64_encode = false
#
#  part {
#    filename = "cloud-config.yaml"
#    content  = file("${path.module}/cloud-config.yaml")
#  }
#}
#
#resource "aws_instance" "ec2_instance" {
#  ami           = "ami-07d9b9ddc6cd8dd30"
#  instance_type = "t2.micro"
#  key_name      = var.key_pair_name
#
#  vpc_security_group_ids = [aws_security_group.security_group.id]
#
#  user_data = data.cloudinit_config.instance_config.rendered
#
#  tags = {
#    Name = "simple-web-app (created from terraform)"
#  }
#}
#
#resource "aws_security_group" "security_group" {
#  name        = "appSecurityGroup"
#  description = "Allow ssh and http traffic"
#
#  ingress {
#    from_port   = 22
#    to_port     = 22
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port   = 80
#    to_port     = 80
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port   = 443
#    to_port     = 443
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#}
