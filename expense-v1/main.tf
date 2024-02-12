resource "aws_instance" "Frontend" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"
                #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = "Frontend-dev"
  }
}

resource "aws_instance" "Backend" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = "Backend-dev"
  }
}

resource "aws_instance" "MySQL" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = "MySQL-dev"
  }
}