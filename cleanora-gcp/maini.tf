provider "google" {
  project = var.project_id
  region  = "europe-west1"
}
module "storage" {
  source      = "../modules_GCP/storage"
  bucket_name = "cleanora-static-site"
}

module "CDN" {
  source      = "../modules_GCP/CDN"
  bucket_name = module.storage.bucket_name
}
module "ssl" {
  source  = "../modules_GCP/SSL"
  domains = ["cleanora.com"]
}
module "DNS" {
 source      = "../modules_GCP/DNS"
  domain     = "cleanora.com."
  ip_address = module.CDN.ip_address
}