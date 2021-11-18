terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = ">=2.7.0"
                }
        }

        backend "s3" {
                bucket = "terraforms3-backend-bucket-19876"
                key = "statefile/terraform.tfstate"
                region = "us-east-2"
        }
}

