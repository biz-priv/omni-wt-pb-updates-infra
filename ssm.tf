resource "aws_ssm_parameter" "omni-pb-wt-milestones-update-dynamodb-name" {
  name  = "/omni-pb-wt/${var.env}/milestones-update/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-wt-milestones-update.name

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-wt-milestones-update"
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
    Name        = "omni-pb-wt-milestones-update-stream"
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
    Name        = "omni-pb-add-milestone-error-notification"
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
    Name        = "omni_ivia_addMilestone_console_url"
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
    Name        = "/omni-ivlp/${var.env}/loadtracking/url"
  }
}

resource "aws_ssm_parameter" "conso-stop-header-consol-index" {
  name  = "/omni-pb-wt/${var.env}/consol-stop-header-consol-index"
  type  = "String"
  value = "omni-ivia-FK_ConsolNo-index-${var.env}"

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/consol-stop-header-consol-index"
  }
}

resource "aws_ssm_parameter" "pb-username" {
  name  = "/omni-pb-wt/${var.env}/pb-username"
  type  = "String"
  value = "apiuser"

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/pb-username"
  }
}

resource "aws_ssm_parameter" "pb-password" {
  name  = "/omni-pb-wt/${var.env}/pb-password"
  type  = "SecureString"
  value = "lvlpapiuser"

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/pb-password"
  }
}

resource "aws_ssm_parameter" "omni-pb-wt-milestones-update-dynamodb-status-index" {
  name  = "/omni-pb-wt/${var.env}/milestones-update/db-status-index"
  type  = "String"
  value = "Status-index"

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/milestones-update/db-status-index"
  }
}