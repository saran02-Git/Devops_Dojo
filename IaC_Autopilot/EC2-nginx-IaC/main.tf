resource "aws_instance" "india" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t3.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "India-nginx"
  }
}

resource "aws_instance" "us" {
  provider      = aws.us
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "US-nginx"
  }
}
