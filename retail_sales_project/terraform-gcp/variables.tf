variable "credentials" {
  type        = string
  default     = "D:/data_engineer_project/creds/my-creds.json"
  description = "Credentials GCP"
}

variable "project" {
  default     = "retail-sales-437510"
  description = "Project ID"
}

variable "location" {
  default     = "us"
  description = "Project location"
}

variable "region" {
  default     = "us-west2"
  description = "Project region"
}

variable "bq_dataset_name" {
  default     = "retail_sales_dataset"
  description = "BigQuery Dataset Name"
}

variable "gcs_bucket_name" {
  default     = "retail_sales_bucket"
  description = "Retail sales bucket"
}

variable "gcs_storage_class" {
  default     = "standard"
  description = "Storage Class Bucket"
}