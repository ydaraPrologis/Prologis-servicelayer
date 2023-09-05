resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket

  tags = {
    Team        = var.team_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}