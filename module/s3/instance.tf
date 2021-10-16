resource "aws_s3_bucket" "backup" {
  bucket = var.s3_bucket
  key    = var.s3_key_name
  source = var.s3_source
  shared_credentials_file = "/Users/boubie/.aws/credentials"
  profile                 = "admin"
  
  tags = {
    Name = "jenkinsTerraform-S3"
  }
}
  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  # etag = filemd5(var.s3_source)

  