# resource "google_compute_instance" "vm" {
#   name         = "cleanora-vm"
#   machine_type = "e2-micro"
#   zone         = var.zone

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#     }
#   }

#   network_interface {
#     subnetwork = var.subnet_id

#     access_config {}
#   }

#   metadata_startup_script = <<-EOF
#     #!/bin/bash
#     apt update
#     apt install -y nginx
#     systemctl start nginx
#     systemctl enable nginx
#   EOF
# }
resource "google_compute_instance_template" "template" {
  name         = "cleanora-template"
  machine_type = "e2-micro"

  disk {
    source_image = "debian-cloud/debian-11"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    subnetwork = var.subnet_id
    access_config {} 
  }

  metadata_startup_script = <<-EOF
#!/bin/bash
set -e

apt update -y
apt install -y nginx

systemctl enable nginx
systemctl start nginx

cat <<HTML > /var/www/html/index.html
<h1>Hello from Cleanora VM 🚀</h1>
<p>Deployed with Terraform</p>
HTML
EOF
  
}