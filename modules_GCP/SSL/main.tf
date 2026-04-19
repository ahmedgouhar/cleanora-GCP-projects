resource "google_compute_managed_ssl_certificate" "cert" {
  name = "cleanora-cert"

  managed {
    domains = var.domains
  }
}