
resource "google_storage_bucket" "website" {
  name          = var.bucket_name
  location      = "EU"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "error.html"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "public" {
  bucket = google_storage_bucket.website.name
  role   = "roles/storage.objectViewer"

  members = ["allUsers"]
}