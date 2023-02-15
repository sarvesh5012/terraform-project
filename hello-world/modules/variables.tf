# variables for EC2
variable "web_instance_type" {default = "t2.micro"}
variable "ami_id" {default = "ami-0aa7d40eeae50c9a9"}
variable "key_name" {default = "mykp23"}
variable "publicVM_Name" {default = "Public_EC2"}
variable "privateVM_Name" {default = "Private_EC2"}

#vpc
# variable "vpc_s" {
#     type = list(string)
#     default = [ "MYVPC_1","MYVPC_2" ]
  
# }
variable "cidr_block_vpc" {
    default = "192.168.0.0/16"
    # type = list(string)
    # default = [ "192.168.0.0/16","10.0.0.0/16" ]
    }

# variables for subnet
variable "publicSUBNET"{default = "my_subnet1"}
variable "privateSUBNET"{default = "my_subnet2"}

variable "cidr_block_sn_public" {default = "192.168.0.0/24"}
variable "cidr_block_sn_private" {default = "192.168.1.0/24"}

#variables for route table
variable "cidr_block_rt" {default = "0.0.0.0/0"}


#variables for NAT gw
variable "nat_gw_name" {default = "MY NAT GW"}

#variables for  igw
variable "igw_name" {default = "MY IGW "}