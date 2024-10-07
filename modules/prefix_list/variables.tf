variable "env" {}
variable "context" {
  default="aws"
}

variable "address_family" {
  description = "The address family of the prefix list (IPv4 or IPv6)"
  type        = string
  default     = "IPv4"
}

variable "cidr_blocks" {
  description = "A map of CIDR blocks to add to the prefix list, with descriptions"
  type        = map(string)
}

variable "management_account_id" {
  description = "The id of the root/management AWS account"
  type        = string
}

variable "principle_ou_arn_suffixes" {
  description = "The ARNs are dynamically generated, assume to be ou in the format of arn:aws:organizations::1234567890:ou/{{suffix}},please provide the suffix portion"
  type        = list(string)
}
