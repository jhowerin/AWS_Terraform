provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

# Adding Name to instance
resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
  name = "TheCloudCTO"
}

terraform {
  backend "remote" {
    organization = "TheCloudCTO"

    workspaces {
      name = "TheCloudCTO"
    }
  }
}