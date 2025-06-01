provider "aws" {
   region = "eu-west-2" # London region
 }
 resource "aws_s3_bucket" "terraform-statefile-michael" {
   bucket = "terraform-statefile-michael"
 }
 terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-statefile-michael"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}