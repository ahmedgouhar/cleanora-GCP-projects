resource "google_compute_backend_bucket" "backend" {
  name        = "cleanora-backend"
  bucket_name = var.bucket_name
  enable_cdn  = true
}

resource "google_compute_url_map" "url_map" {
  name            = "cleanora-map"
  default_service = google_compute_backend_bucket.backend.id
}

resource "google_compute_target_http_proxy" "proxy" {
  name    = "cleanora-proxy"
  url_map = google_compute_url_map.url_map.id
}

resource "google_compute_global_address" "ip" {
  name = "cleanora-ip"
}

resource "google_compute_global_forwarding_rule" "rule" {
  name       = "cleanora-rule"
  target     = google_compute_target_http_proxy.proxy.id
  port_range = "80"
  ip_address = google_compute_global_address.ip.address
}