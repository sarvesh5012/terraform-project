resource "aws_route_table" "cust_rt_igw" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = var.cidr_block_rt
        gateway_id = aws_internet_gateway.MYIgw.id
    }

    tags = {
      Name = "cust_route_igw"
    }
  
}

resource "aws_route_table_association" "SNassociationGW" {
    subnet_id = aws_subnet.my_subnet1.id
    route_table_id = aws_route_table.cust_rt_igw.id
  
}



resource "aws_route_table" "cust_rt_nat" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = var.cidr_block_rt
        nat_gateway_id = aws_nat_gateway.my_NATGW.id
    }

    tags = {
        Name = "cust_route_nat"
    }
  
}

resource "aws_route_table_association" "SNassociationNAT" {
    subnet_id = aws_subnet.my_subnet2.id
    route_table_id = aws_route_table.cust_rt_nat.id
  
}