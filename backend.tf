#s3 remot state
provider "aws" {
  access_key = "AKIA52LW4STZEZOQI7IU"
  secret_key = "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"
  region = "ap-south-1"
}
resource "aws_s3_bucket" "tf_remote_state1" {
  bucket = "11901874"
  lifecycle {
    prevent_destroy = true
  }
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
}

m

