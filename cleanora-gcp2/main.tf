provider "google" {
  project = var.project_id
  region  = "europe-west1"
}

module "network" {
  source = "../modules_GCP/network"
  region = "europe-west1"
}

module "firewall" {
  source     = "../modules_GCP/firewall"
  network_id = module.network.network_id
}

module "nat" {
  source     = "../modules_GCP/nat"
  network_id = module.network.network_id
  region     = "europe-west1"
}

module "template" {
  source    = "../modules_GCP/template"
  subnet_id = module.network.public_subnet
}

module "mig" {
  source      = "../modules_GCP/mig"
  zone        = "europe-west1-b"
  template_id = module.template.template_id
}

module "lb" {
  source         = "../modules_GCP/lb"
  instance_group = module.mig.instance_group
}