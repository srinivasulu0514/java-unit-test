terraform {
 backend "s3" {
   bucket         = var.bucket #"my-terraform-state-bucket"
   key            = var.terraformstate_key #"vpc/terraform.tfstate"
   region         = var.region #"us-east-1"
   dynamodb_table = var.dynamodb_table #"terraform-lock-table"
   encrypt        = true
 }
}
