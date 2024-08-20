resource "aws_sns_topic" "omni-pb-add-milestone-error-notification" {
  name = "omni-pb-add-milestone-error-notification-${var.env}"
}

resource "aws_sns_topic_subscription" "omni_pb_add_milestone_emails" {
  for_each  = { for idx, email in var.omni_pb_add_milestone_emails : idx => email }
  topic_arn = aws_sns_topic.omni-pb-add-milestone-error-notification.arn
  protocol  = "email"
  endpoint  = each.value
}

resource "aws_sns_topic_subscription" "live_rt_movement_table_stream_processor_queue_sns_subscription" {
  topic_arn = "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-movement-rt-ddb-to-sns-${var.env}"
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.live_rt_movement_table_stream_processor_queue.arn
}

resource "aws_sns_topic_subscription" "live_rt_stop_table_stream_processor_queue_sns_subscription" {
  topic_arn = "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-stop-rt-ddb-to-sns-${var.env}"
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.live_rt_stop_table_stream_processor_queue.arn
}

resource "aws_sns_topic_subscription" "live_rt_callin_table_stream_processor_queue_sns_subscription" {
  topic_arn = "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-callin-rt-ddb-to-sns-${var.env}"
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.live_rt_callin_table_stream_processor_queue.arn
}
