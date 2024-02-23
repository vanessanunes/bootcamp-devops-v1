resource "aws_instance" "amb-prod" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "terraform-rsa-pem"
  security_groups = ["allow_ssh", "allow_http", "allow_egress"]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}