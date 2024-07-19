variable "env" {
  type     = string
  nullable = false
}

variable "region" {
  type     = string
  nullable = false
}

variable "aws_account_number" {
  type     = string
  nullable = false
}

variable "created_by" {
  type     = string
  nullable = false
}

variable "omni_pb_add_milestone_emails" {
  type    = list(string)
  nullable = false
}

variable "omni_ivia_addMilestone_console_url" {
  type     = string
  nullable = false
}

variable "omni_loadtracking_url" {
  type     = string
  nullable = false
}
