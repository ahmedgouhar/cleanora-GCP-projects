resource "google_dns_managed_zone" "zone" {
  name     = "cleanora-zone"
  dns_name = var.domain
}

resource "google_dns_record_set" "a_record" {
  name         = var.domain
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.zone.name

  rrdatas = [var.ip_address]
}