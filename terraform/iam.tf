// IAM roles and permissions

resource "google_project_iam_member" "app_engine_deployer" {
  project = var.project_id
  role    = "roles/appengine.appAdmin"
  member  = "serviceAccount:${var.project_id}@appspot.gserviceaccount.com"
}