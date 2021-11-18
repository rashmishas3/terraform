resource "aws_instance" "firstec2" {
	ami= "ami-0629230e074c580f2"
	instance_type= "t2.micro"
	tags= {
	Name= "terra_ubuntu"
	}
}
