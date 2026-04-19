resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
