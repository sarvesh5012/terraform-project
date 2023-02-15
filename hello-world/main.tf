module "archi-module" {
  source = "./modules"
  for_each = var.container
  web_instance_type     = each.value.web_instance_type
  ami_id                = each.value.ami_id
  key_name              = each.value.key_name
  publicVM_Name         = each.value.publicVM_Name
  privateVM_Name        = each.value.privateVM_Name
  cidr_block_vpc        = each.value.cidr_block_vpc
  publicSUBNET          = each.value.publicSUBNET
  privateSUBNET         = each.value.privateSUBNET
  cidr_block_sn_public  = each.value.cidr_block_sn_public
  cidr_block_sn_private = each.value.cidr_block_sn_private
  cidr_block_rt         = each.value.cidr_block_rt 
  nat_gw_name           = each.value.nat_gw_name
  igw_name              = each.value.igw_name

}



