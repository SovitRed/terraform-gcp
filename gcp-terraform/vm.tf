resource "google_compute_instance" "instance-2" {
 zone = var.zone
 machine_type = var.machine_type
  boot_disk {
    auto_delete = true
    device_name = var.instance_name

    initialize_params {
      image = var.image_name
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
  }

  # Rest of the configuration using variables

  name = var.instance_name
 
  network_interface {
    network = google_compute_network.vpc-2.self_link
    subnetwork = google_compute_subnetwork.sub-1.self_link

    access_config {
      //
    }

  }

  tags = ["http-server", "https-server"]
  allow_stopping_for_update = true
}
