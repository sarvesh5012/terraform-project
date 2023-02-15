resource "aws_eip" "eIPforNAT" {

}

resource "aws_nat_gateway" "my_NATGW" {
  allocation_id = aws_eip.eIPforNAT.id
  subnet_id     = aws_subnet.my_subnet1.id

  tags = {
    Name = var.nat_gw_name
  }

  depends_on = [
    aws_internet_gateway.MYIgw
  ]

}
