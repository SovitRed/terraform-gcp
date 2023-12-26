# Create the VPC
resource "google_compute_network" "vpc-2" {
  name                    = var.vpc_name
  project                 = var.project_id
  auto_create_subnetworks = false
}

# Create Subnet 1
resource "google_compute_subnetwork" "sub-1" {
  name                    = var.subnet1_name
  region                  = var.subnet1_region
  network                 = google_compute_network.vpc-2.self_link
  ip_cidr_range           = var.subnet1_cidr
  private_ip_google_access = false

}

# Create Subnet 2
resource "google_compute_subnetwork" "sub-2" {
  name                    = var.subnet2_name
  region                  = var.subnet2_region
  network                 = google_compute_network.vpc-2.self_link
  ip_cidr_range           = var.subnet2_cidr
  private_ip_google_access = false
}
