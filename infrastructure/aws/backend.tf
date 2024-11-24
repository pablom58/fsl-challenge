terraform {
  backend "s3" {
    bucket = "fsl-challenge-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "fsl-challenge-tfstate"
  }
}