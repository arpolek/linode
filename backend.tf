terraform {
  backend "s3" {
    endpoint                    = "https://it-mil-1.linodeobjects.com"
    bucket                      = "tf-state"
    key                         = "terraform.tfstate"
    region                      = "eu-south-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
