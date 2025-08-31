provider "google" {
  project = "alen-devops-gcp"
  region  = "asia-southeast2"
}

resource "google_container_cluster" "primary" {
  name               = "webapp-cluster"
  location           = "asia-southeast2"
  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"     # Tipe VM yang ringan
    disk_size_gb = 50              # Ukuran disk (dapat disesuaikan agar tidak melebihi kuota SSD)
    disk_type    = "pd-balanced"   # Alternatif dari SSD jika ingin hemat kuota
  }
}
