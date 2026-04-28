resource "aws_instance" "india_instance" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"

  tags = {
    Name = "India-Instance"
  }
}

resource "aws_instance" "us_instance" {
  provider      = aws.us
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  tags = {
    Name = "US-Instance"
  }
}
