
resource "aws_vpc" "my_vpc" {
  #for_each   = toset(var.vpc_s)
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = "myVPC"
  }

}
