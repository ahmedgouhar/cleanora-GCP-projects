resource "google_compute_health_check" "hc" {
  name = "http-health-check"

  http_health_check {
    port = 80
  }
}

resource "google_compute_backend_service" "backend" {
  name          = "cleanora-backend"
  protocol      = "HTTP"
  timeout_sec   = 10
  health_checks = [google_compute_health_check.hc.id]

  backend {
    group = var.instance_group
  }
}

resource "google_compute_url_map" "url_map" {
  name            = "cleanora-map"
  default_service = google_compute_backend_service.backend.id
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