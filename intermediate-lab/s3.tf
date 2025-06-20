resource "aws_s3_bucket" "bucket1" {
  bucket = "goudashoes"

  tags = {
    Name        = "Yousef"
    Environment = "Test"
  }
}