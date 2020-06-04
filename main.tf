# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-gabor"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}


provider "aws" {
	region = var.region 
}

# Create EC2 instance
resource "aws_instance" "default" {
  ami                    = var.ami
  count                  = var.instance_count
  key_name	         = var.key_name
  vpc_security_group_ids = [aws_security_group.default.id]
  source_dest_check      = false
  instance_type          = var.instance_type

  tags = {
    Name = "terraform-default"
  }
}

resource "aws_instance" "example" {

	ami = "ami-01a6e31ac994bbc09"
	instance_type = "t2.micro"
	
	provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }

}

resource "aws_instance" "example2" {

	ami = "ami-01a6e31ac994bbc09"
	instance_type = "t2.micro"
	
	provisioner "local-exec" {
    command = "echo ${aws_instance.example2.public_ip} > ip_address.txt"
  }

}

resource "aws_instance" "example3" {

	ami = "ami-01a6e31ac994bbc09"
	instance_type = "t2.micro"
	
	provisioner "local-exec" {
    command = "echo ${aws_instance.example3.public_ip} > ip_address.txt"
  }

}

# Create Security Group for EC2
resource "aws_security_group" "default" {
  name = "terraform-default-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
