resource "google_storage_bucket" "gcp_cloud_bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_access
}