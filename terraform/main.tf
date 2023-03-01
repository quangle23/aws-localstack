resource "aws_dynamodb_table" "local_dynamo" {
  name           = "local-dynamo"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "Id"
  range_key      = "Timestamp"

  attribute {
    name = "Id"
    type = "S"
  }

  attribute {
    name = "Timestamp"
    type = "S"
  }
}

resource "aws_s3_bucket" "localBucket" {
  bucket = "local-bucket"
}
