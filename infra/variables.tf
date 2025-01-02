variable "region" {
  description = "AWS Region"
  default     = "us-west-2"
}

variable "ami" {
  description = "AMI ID for EC2"
  default     = "ami-0abcdef1234567890"
}

variable "instance_type" {
  description = "Instance type for EC2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
}

variable "bucket_name" {
  description = "S3 bucket name"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "vr-fashion-cluster"
}
