terraform {
  backend "gcs" {
    bucket         = "demobucket01r8ft"  
    prefix       = "terraform.tfstate"  
  }
}