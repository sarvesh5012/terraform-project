resource "aws_subnet" "my_subnet1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr_block_sn_public

  tags = {
    Name = "publicSUBNET"
  }

}

resource "aws_subnet" "my_subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr_block_sn_private

  tags = {
    Name = "privateSUBNET"
  }

}
