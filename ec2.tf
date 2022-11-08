resource "aws_instance" "web" {
  ami           = Var."AMI_ID"
  instance_type = Var."INSTANCE_TYPE" 

  tags = {
    Name = "HelloWorld"
  }
}
