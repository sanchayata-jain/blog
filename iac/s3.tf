resource "aws_s3_bucket" "blog_static_website_files" {
  bucket = "blog-static-web-files"

  tags = {
    ManagedBy = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "blog_bucket_versioning" {
  bucket = aws_s3_bucket.blog_static_website_files.id
  versioning_configuration {
    status = "Enabled"
  }
}

