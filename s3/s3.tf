resource "aws_s3_bucket" "My-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}
