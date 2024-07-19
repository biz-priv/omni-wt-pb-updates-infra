resource "aws_ssm_parameter" "omni-pb-214-add-milestone-dynamodb-name" {
  name  = "/omni-pb-214/${var.env}/add-milestone/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-214-add-milestone.name

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-pb-214-add-milestone"
  }
}

resource "aws_ssm_parameter" "add-milestone-streamArn" {
  name  = "/omni-pb-rt/${var.env}/214-add-milestone/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-214-add-milestone.stream_arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-pb-214-add-milestone"
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