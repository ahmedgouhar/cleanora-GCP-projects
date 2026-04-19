# output "public_ip" {
#   value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
# }
output "template_id" {
  value = google_compute_instance_template.template.id
}