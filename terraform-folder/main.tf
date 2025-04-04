provider "aws"{
	region = "us-east-1"
}
local {
   value = {
	web = "t2.micro"
	db  = "t2.medium
   }
}
resource "aws_instance" "web-1"{
  for_each = local.value
  ami = "var.aws_ami"
  instance_type = each.value
  tags = {Name = each.key}
}
