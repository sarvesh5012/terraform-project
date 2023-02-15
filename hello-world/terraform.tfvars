container = {
  container1 = {
  web_instance_type     = "t2.micro"
  ami_id                = "ami-0aa7d40eeae50c9a9"
  key_name              = "mykp23"
  publicVM_Name         = "Public_EC2"
  privateVM_Name        = "Private_EC2"
  cidr_block_vpc        = "192.168.0.0/16"
  publicSUBNET          = "my_subnet1"
  privateSUBNET         = "my_subnet2"
  cidr_block_sn_public  = "192.168.0.0/24"
  cidr_block_sn_private = "192.168.1.0/24"
  cidr_block_rt         = "0.0.0.0/0"
  nat_gw_name           = "MY NAT GW"
  igw_name              = "MY IGW"
}

}
