resource "aws_instance" "web" {
  ami           = "ami-0149b2da6ceec4bb0"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
