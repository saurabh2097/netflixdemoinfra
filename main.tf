provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a9a48ce4458e384e"
instance_type = "t2.medium"
key_name = "saurabhteraformkeypair"
vpc_security_group_ids = ["sg-0421382adccde5d20"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
