provider "aws" {
 region = var.region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags   = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "testing-ec2" {
  ami               = var.image-name
  instance_type     = var.instance-type
  key_name          = var.key-name
  availability_zone = var.az

  tags = {
    Name = "input-var"
  }

}