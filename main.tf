terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.12.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project = "terraform-515511"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo-storage-bucket" {
  name          = var.google_cloud_storage_bucket_name
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = var.bigquery_dataset_name
  location   = "US"
}