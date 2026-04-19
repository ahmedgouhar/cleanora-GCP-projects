resource "google_compute_instance_group_manager" "mig" {
  name               = "cleanora-mig"
  base_instance_name = "cleanora"
  zone               = var.zone

  version {
    instance_template = var.template_id
  }

  target_size = 2
}

resource "google_compute_autoscaler" "asg" {
  name   = "cleanora-autoscaler"
  zone   = var.zone
  target = google_compute_instance_group_manager.mig.id

  autoscaling_policy {
    max_replicas = 2
    min_replicas = 1

    cpu_utilization {
      target = 0.6
    }
  }
}