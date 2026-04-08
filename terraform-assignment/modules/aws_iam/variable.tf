variable "name" {
  type = string
  description = "Name of iam role"
}

variable "role_policy" {
  type = map(string)
  description = "Policy attached to the IAM role"

}

variable "policy_name" {
  type = string
  description = "Name of the policy"
}

variable "policy_arn" {
  type = string
  description = "List of policies to attach to the IAM role"
}

variable "policy_roles" {
  type = list(string)
  description = "list of roles"
}