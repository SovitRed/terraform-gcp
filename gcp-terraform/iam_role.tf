resource "google_project_iam_custom_role" "iam_custom_role" {
  role_id     = var.role_id
  project     = var.project_id
  title       = "Example Custom Role"
  description = "This is an IAM custom role for GCP."

  permissions = [
    "resourcemanager.projects.get",
    "storage.objects.create",
    "storage.objects.get",
  ]
}
