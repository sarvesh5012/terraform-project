
resource "aws_security_group" "web_sg" {
   
    vpc_id = aws_vpc.my_vpc.id

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }


  
}


resource "aws_instance" "PublicVM" {
    ami = var.ami_id
    instance_type = var.web_instance_type
    key_name = "mykp23"
    subnet_id = aws_subnet.my_subnet1.id

    vpc_security_group_ids = [aws_security_group.web_sg.id]

    associate_public_ip_address = true

    tags = {
        Name = var.publicVM_Name
    }
  
}


resource "aws_instance" "PrivateVM" {
    ami = var.ami_id
    instance_type = var.web_instance_type
    key_name = "mykp23"
    subnet_id = aws_subnet.my_subnet2.id

    vpc_security_group_ids = [aws_security_group.web_sg.id]

    associate_public_ip_address = false

    tags = {
        Name = var.privateVM_Name
    }
  
}


