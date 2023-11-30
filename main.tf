provider "google" {
  credentials = file("<path-to-service-account-key>")
  project     = "<your-project-id>"
  region      = "us-central1"
}

resource "google_organization" "org" {
  display_name = "My Organization"
}

resource "google_project" "project" {
  name       = "my-project"
  project_id = "my-project-id"
  org_id     = google_organization.org.org_id
}

resource "google_project_service" "services" {
  project = google_project.project.project_id
  services = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
    # ... add more services as needed
  ]
}

resource "google_project_service_identity" "service_identity" {
  project = google_project.project.project_id
}

resource "google_project_iam_binding" "binding" {
  project = google_project.project.project_id
  role    = "roles/editor"
  members = ["serviceAccount:${google_project_service_identity.service_identity.email}"]
}
