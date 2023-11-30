resource "google_container_cluster" "gke" {
  name     = "my-gke-cluster"
  location = "us-central1"

  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-1"
  }

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}
