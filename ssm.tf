resource "aws_ssm_parameter" "omni-pb-wt-milestones-update-dynamodb-name" {
  name  = "/omni-pb-wt/${var.env}/milestones-update/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-wt-milestones-update.name

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-pb-wt-milestones-update"
  }
}

resource "aws_ssm_parameter" "milestones-update-streamArn" {
  name  = "/omni-pb-wt/${var.env}/milestones-update/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-wt-milestones-update.stream_arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-pb-wt-milestones-update-stream"
  }
}

resource "aws_ssm_parameter" "omni-pb-error-topic" {
  name  = "/omni-pb-rt/${var.env}/error-notification/arn"
  type  = "String"
  value = aws_sns_topic.omni-pb-add-milestone-error-notification.name

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-pb-add-milestone-error-notification"
  }
}

resource "aws_ssm_parameter" "omni-ivia-add-milestone-console-url" {
  name  = "/omni-ivia/${var.env}/addMilestone/console/url"
  type  = "String"
  value = var.omni_ivia_addMilestone_console_url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni_ivia_addMilestone_console_url"
  }
}

resource "aws_ssm_parameter" "omni_loadtracking_url" {
  name  = "/omni-ivlp/${var.env}/loadtracking/url"
  type  = "String"
  value = var.omni_loadtracking_url 

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni_loadtracking_url"
  }
}