variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "Number of private subnets to create"
  type        = number
  default     = 2
}

variable "allow_ssh_cidr_blocks" {
  description = "List of CIDR blocks allowed to SSH into the EC2 instances"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Update this for security; use specific IPs
}

