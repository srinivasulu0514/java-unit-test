variable "bucket" {
 description = "Enter your s3 bucket name"
 type = string
}

variable "terraformstate_key" {
 description = "Enter your terraform statefile name"
 type = string
}

variable "region" {
 description = "Enter AWS region"
 type = string
}

variable "dynamodb_table" {
 description = "Enter dynamodb table name for statefile locking"
 type = string
}

variable "instance_type" {
 description = "Enter the EC2 instance type"
 type = string 
 default     = "t2.micro"
}
