resource "google_artifact_registry_repository" "repository" {
  repository_id  = var.repository_id
  location = var.repository_location
  format  = var.format
}