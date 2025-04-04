provider "aws"{
	region = "us-east-1"
}
local {
   value = {
	web = "t2.micro"
	db  = "t2.medium
   }
}
