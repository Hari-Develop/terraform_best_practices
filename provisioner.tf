resource "aws_instance" "nginx" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "Nginx"
  }

provisioner "remote-exec" {
  inline = [ 
    "yum install nginx -y"
   ]
}

connection {
  type = "ssh"
  host = self.public_ip
  user = "centos"
  password = "DevOps321"
}
}