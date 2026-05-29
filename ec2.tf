# main.tf


# EC2 Instance
resource "aws_instance" "my_ec2" {

  ami           = "ami-0f58b397bc5c1f2e8"   # Amazon Linux 2 AMI
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}