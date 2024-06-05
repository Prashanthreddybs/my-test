terraform {
  backend "s3" {
    bucket = "my-test111"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
