resource "aws_dynamodb_table" "omni-pb-214-add-milestone" {
  name             = "omni-pb-214-add-milestone-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "Housebill"
  range_key        = "StatusCode"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "Housebill"
    type = "S"
  }

  attribute {
    name = "StatusCode"
    type = "S"
  }

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
  }
}