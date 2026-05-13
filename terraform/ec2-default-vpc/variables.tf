variable "aws_region" {
  description = "AWS region where the instance is created."
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Prefix used for resource names and default tags."
  type        = string
  default     = "terraform-ec2"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr_blocks" {
  description = "CIDR blocks allowed to reach TCP 22 on the instance. Leave empty to disable SSH ingress."
  type        = list(string)
  default     = []
}
