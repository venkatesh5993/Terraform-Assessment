resource "aws_s3_bucket" "mywebsite" {
  bucket = "venkateshmywebsite-bucket"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.mywebsite.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = "*"
        Action = [
          "s3:GetObject"
        ]
        Resource = [
          "${aws_s3_bucket.mywebsite.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mywebsite.id
  key = "index.html"
  acl    = "public-read"
  source = "./index.html"
  etag   = filemd5("./index.html")
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mywebsite.id
  key = "error.html"
  acl    = "public-read"
  source = "./error.html"
  etag   = filemd5("./error.html")
  content_type = "text/html"
}

resource "aws_s3_object" "image" {
  bucket = aws_s3_bucket.mywebsite.id
  key = "image.jpg"
  acl    = "public-read"
  source = "./image.jpg"
  etag   = filemd5("./image.jpg")
}

resource "aws_s3_object" "error_image" {
  bucket = aws_s3_bucket.mywebsite.id
  key = "error.jpeg"
  acl    = "public-read"
  source = "./error.jpeg"
  etag   = filemd5("./error.jpeg")
}

