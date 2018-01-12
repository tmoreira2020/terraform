provider "aws" {
  access_key = "AKIAIZXAJLEX7WHY3EMA"
  secret_key = "EBPmre/yvam3mCCgGzDDz8P+D2IVEx24cdO4ZyKy"
  region     = "us-west-1"
}

terraform {
  required_version = "~> 0.10"

}

resource "aws_instance" "example" {
  ami           = "ami-08e2b968"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}