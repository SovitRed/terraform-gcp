# Create Firewall Rule for ICMP
resource "google_compute_firewall" "icmp_firewall" {
  name        = var.icmp_firewall_name
  network     = google_compute_network.vpc-2.name
  project     = var.project_id

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1460
}

# Create Firewall Rule for SSH
resource "google_compute_firewall" "ssh_firewall" {
  name        = var.ssh_firewall_name
  network     = google_compute_network.vpc-2.name
  project     = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1460
}

# Create Firewall Rule for HTTP (TCP port 80)
resource "google_compute_firewall" "http_firewall" {
  name        = "allow-http"
  network     = google_compute_network.vpc-2.name
  project     = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1460
}

# Create Firewall Rule for HTTPS (TCP port 443)
resource "google_compute_firewall" "https_firewall" {
  name        = "allow-https"
  network     = google_compute_network.vpc-2.name
  project     = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1460
}

######################### database ###################

resource "google_compute_firewall" "sql_to_subnet" {
  name        = "sql-to-subnet"
  network     = google_compute_network.vpc-2.name
  project     = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["3306"]  # Assuming MySQL uses the default port 3306
  }

  source_ranges = [
    google_compute_subnetwork.sub-1.ip_cidr_range,
    google_compute_subnetwork.sub-2.ip_cidr_range,
  ]

  target_tags  = ["sql-instance"]
  direction    = "EGRESS"
  priority     = 1460
}






