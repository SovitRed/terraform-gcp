resource "google_sql_database_instance" "database_instance" {
  name             = var.instance_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.tier
  }
  // Disable deletion protection
  deletion_protection = false
}

resource "google_sql_user" "new_user" {             
  name     = var.user_name
  instance = google_sql_database_instance.database_instance.name
  password = var.user_password 
  host = var.authorized_network_cidr
}

resource "google_sql_database" "new_database" {
  name     = var.database_name
  instance = google_sql_database_instance.database_instance.name
  charset  = var.charset
}
