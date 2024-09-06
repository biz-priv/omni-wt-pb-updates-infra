resource "aws_sqs_queue" "live_rt_movement_table_stream_processor_queue" {
  name                       = "${var.application}-milestone-stream-queue-${var.env}"
  visibility_timeout_seconds = 300
  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "${var.application}-milestone-stream-queue-${var.env}"
  }
}

data "aws_iam_policy_document" "live_rt_movement_table_stream_processor_queue_policy" {
  policy_id = "${aws_sqs_queue.live_rt_movement_table_stream_processor_queue.arn}/SQSDefaultPolicy"
  statement {
    sid    = "Allow SNS publish to SQS"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "SQS:SendMessage",
    ]
    resources = [
      aws_sqs_queue.live_rt_movement_table_stream_processor_queue.arn
    ]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values = [
        "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-movement-rt-ddb-to-sns-${var.env}"
      ]
    }
  }
}

resource "aws_sqs_queue_policy" "live_rt_movement_table_stream_processor_queue_policy" {
  queue_url = aws_sqs_queue.live_rt_movement_table_stream_processor_queue.id
  policy    = data.aws_iam_policy_document.live_rt_movement_table_stream_processor_queue_policy.json
}

resource "aws_sqs_queue" "live_rt_stop_table_stream_processor_queue" {
  name                       = "${var.application}-stop-stream-queue-${var.env}"
  visibility_timeout_seconds = 300
  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "${var.application}-stop-stream-queue-${var.env}"
  }
}

data "aws_iam_policy_document" "live_rt_stop_table_stream_processor_queue_policy" {
  policy_id = "${aws_sqs_queue.live_rt_stop_table_stream_processor_queue.arn}/SQSDefaultPolicy"
  statement {
    sid    = "Allow SNS publish to SQS"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "SQS:SendMessage",
    ]
    resources = [
      aws_sqs_queue.live_rt_stop_table_stream_processor_queue.arn
    ]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values = [
        "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-stop-rt-ddb-to-sns-${var.env}"
      ]
    }
  }
}

resource "aws_sqs_queue_policy" "live_rt_stop_table_stream_processor_queue_policy" {
  queue_url = aws_sqs_queue.live_rt_stop_table_stream_processor_queue.id
  policy    = data.aws_iam_policy_document.live_rt_stop_table_stream_processor_queue_policy.json
}

resource "aws_sqs_queue" "live_rt_callin_table_stream_processor_queue" {
  name                       = "${var.application}-callin-table-stream-queue-${var.env}"
  visibility_timeout_seconds = 300
  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "${var.application}-callin-table-stream-queue-${var.env}"
  }
}

data "aws_iam_policy_document" "live_rt_callin_table_stream_processor_queue_policy" {
  policy_id = "${aws_sqs_queue.live_rt_callin_table_stream_processor_queue.arn}/SQSDefaultPolicy"
  statement {
    sid    = "Allow SNS publish to SQS"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "SQS:SendMessage",
    ]
    resources = [
      aws_sqs_queue.live_rt_callin_table_stream_processor_queue.arn
    ]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values = [
        "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-callin-rt-ddb-to-sns-${var.env}"
      ]
    }
  }
}

resource "aws_sqs_queue_policy" "live_rt_callin_table_stream_processor_queue_policy" {
  queue_url = aws_sqs_queue.live_rt_callin_table_stream_processor_queue.id
  policy    = data.aws_iam_policy_document.live_rt_callin_table_stream_processor_queue_policy.json
}
