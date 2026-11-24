variable "credentials" {
  description = "The path to the credentials file."
  default     = "./credentials/credentials.json"
}

variable "bigquery_dataset_name" {
  description = "The name of the BigQuery dataset to create."
  default     = "demo_dataset"
}

variable "google_cloud_storage_bucket_name" {
  description = "The name of the Google Cloud Storage bucket to create."
  default     = "terraform-515511-storage-bucket"
}

variable "google_cloud_storage_class" {
  description = "The storage class of the Google Cloud Storage bucket to create."
  default     = "STANDARD"
}