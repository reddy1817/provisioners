resource "aws_s3_bucket" "robo" {
  bucket = "rgas-dev-red-sun"  # Change this to a unique bucket name
  
  tags = {
    Name = "robobucket"
    Enviroment = "dev"
    Owner = "Raj"
  }
}

resource "aws_s3_bucket_versioning" "robo" {
  bucket = aws_s3_bucket.robo.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "robo" {
  bucket = aws_s3_bucket.robo.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.robo.bucket
}