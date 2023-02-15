terraform {
  backend "s3"{
    bucket = "mys3bucketfromtf"
    key = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}