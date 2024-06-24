resource "aws_s3_bucket" "myFirstS3Bucket" {
  bucket = "remote-bucket-terrform"

  tags = {
    BA = "BACOEPCENTRALTECH"
  }

}

