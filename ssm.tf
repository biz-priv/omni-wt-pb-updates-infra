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
  value = aws_sns_topic.omni-pb-add-milestone-error-notification.arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-rt/${var.env}/error-notification/arn"
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
  name  = "/omni-lvlp/${var.env}/loadtracking/url"
  type  = "String"
  value = var.omni_loadtracking_url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-lvlp/${var.env}/loadtracking/url"
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

resource "aws_ssm_parameter" "omni-pb-rt-movement-queue-arn" {
  name  = "/omni-pb-wt/${var.env}/movement-table-stream-queue-arn"
  type  = "String"
  value = aws_sqs_queue.live_rt_movement_table_stream_processor_queue.arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/movement-table-stream-queue"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-movement-queue-url" {
  name  = "/omni-pb-wt/${var.env}/movement-table-stream-queue-url"
  type  = "String"
  value = aws_sqs_queue.live_rt_movement_table_stream_processor_queue.url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/movement-table-stream-queue-url"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-stop-queue-arn" {
  name  = "/omni-pb-wt/${var.env}/stop-table-stream-queue-arn"
  type  = "String"
  value = aws_sqs_queue.live_rt_stop_table_stream_processor_queue.arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/stop-table-stream-queue"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-stop-queue-url" {
  name  = "/omni-pb-wt/${var.env}/stop-table-stream-queue-url"
  type  = "String"
  value = aws_sqs_queue.live_rt_stop_table_stream_processor_queue.url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/stop-table-stream-queue-url"
  }
}

resource "aws_ssm_parameter" "omni-pb-wt-upload-doc-url" {
  name  = "/omni-pb-wt/${var.env}/upload-doc-url"
  type  = "String"
  value = var.omni_wt_upload_doc_url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/upload-doc-url"
  }
}

resource "aws_ssm_parameter" "omni-pb-wt-upload-doc-api-key" {
  name  = "/omni-pb-wt/${var.env}/upload-doc-api-key"
  type  = "String"
  value = var.omni_wt_upload_doc_api_key

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/upload-doc-api-key"
  }
}

resource "aws_ssm_parameter" "omni-pb-wt-location-update-dynamodb-name" {
  name  = "/omni-pb-wt/${var.env}/location-update/db.name"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-wt-location-update.name

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/location-update/db.name"
  }
}

resource "aws_ssm_parameter" "location-update-streamArn" {
  name  = "/omni-pb-wt/${var.env}/location-update/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-wt-location-update.stream_arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-wt-location-update-stream"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-callin-queue-arn" {
  name  = "/omni-pb-wt/${var.env}/callin-table-stream-queue-arn"
  type  = "String"
  value = aws_sqs_queue.live_rt_callin_table_stream_processor_queue.arn

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/callin-table-stream-queue-arn"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-callin-queue-url" {
  name  = "/omni-pb-wt/${var.env}/callin-table-stream-queue-url"
  type  = "String"
  value = aws_sqs_queue.live_rt_callin_table_stream_processor_queue.url

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt/${var.env}/callin-table-stream-queue-url"
  }
}
