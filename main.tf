resource "aws_s3_bucket" "terraform_s3" {
    bucket = "terraforms3-backend-bucket-19876"

        versioning {
                enabled = true
        }

        server_side_encryption_configuration {
                rule {
                                apply_server_side_encryption_by_default {
                                        sse_algorithm = "AES256"
                                }
                }
        }

        lifecycle {
              prevent_destroy = true
        }
}

resource "aws_dynamodb_table" "backend_lock" {
        hash_key = "LockID"
        name = "my_dynamodb_tabel_backend"
        billing_mode = "PAY_PER_REQUEST"
        attribute {
                name = "LockID"
                type = "S"
        }
}
