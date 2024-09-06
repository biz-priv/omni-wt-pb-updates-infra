resource "aws_dynamodb_table" "omni-pb-wt-milestones-update" {
  name             = "omni-pb-wt-milestones-update-${var.env}"
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

  attribute {
    name = "Status"
    type = "S"
  }

  global_secondary_index {
    name            = "Status-index"
    hash_key        = "Status"
    range_key       = "StatusCode"
    projection_type = "ALL"
  }

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name        = "omni-pb-wt-milestones-update"
  }
}

resource "aws_dynamodb_table" "omni-pb-wt-location-update" {
  name             = "omni-pb-wt-location-update-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "Housebill"
  range_key        = "CallinId"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "Housebill"
    type = "S"
  }

  attribute {
    name = "CallinId"
    type = "S"
  }

  attribute {
    name = "ConsolNo"
    type = "S"
  }

  global_secondary_index {
    name            = "ConsolNo-index"
    hash_key        = "ConsolNo"
    projection_type = "ALL"
  }

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name        = "omni-pb-wt-location-update-${var.env}"
  }
}
