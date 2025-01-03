terraform {
  backend "s3" {
    bucket         = "changingroom-state"        # Replace with your S3 bucket name
    key            = "infra/terraform.tfstate"      # Path to the state file in the bucket
    region         = "us-west-2"                    # AWS region
    dynamodb_table = "changingroom-state-lock"         # DynamoDB table for locking
    encrypt        = true                           # Enable state file encryption
  }
}