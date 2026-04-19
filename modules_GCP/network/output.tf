output "public_subnet" {
  value = google_compute_subnetwork.public.id
}

output "private_subnet" {
  value = google_compute_subnetwork.private.id
}

output "network_id" {
  value = google_compute_network.vpc.id
}