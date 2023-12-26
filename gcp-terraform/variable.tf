variable "instance_name" {
  type = string
}
variable "zone" {
  type = string
}

variable "image_name" {
  type = string
}

variable "boot_disk_size" {
  type = number
}

variable "boot_disk_type" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "network_tier" {
  type = string
}


variable "project_id" {
  description = "Google Cloud project ID"
}

################################# VPC #####################################

variable "vpc_name" {
  type = string
}

variable "subnet1_name" {
  type = string
}

variable "subnet1_region" {
  type = string
}

variable "subnet1_cidr" {
  type = string
}

variable "subnet2_name" {
  type = string
}

variable "subnet2_region" {
  type = string
}
variable "subnet2_cidr" {
  type = string
}

############################ firewall ################################


variable "icmp_firewall_name" {
  type = string
}
variable "ssh_firewall_name" {
  type = string
}


############################# bucket #############################33

variable "bucket_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage_class" {
  type = string
}
variable "uniform_bucket_access" {
  type = bool
}

###################################### SQL ##############################

variable "instance_database_name" {
  description = "The name of your Google Cloud SQL instance"
  type        = string
}

variable "region" {
  description = "The region for your Google Cloud SQL instance"
  type        = string
}

variable "tier" {
  description = "The desired tier for your Cloud SQL instance"
  type        = string
}

variable "database_name" {
  description = "The name of your MySQL database"
  type        = string
}

variable "user_name" {
  type = string
}

variable "user_password" {
  type = string
}

variable "authorized_network_cidr" {
  type = string
}

variable "expiration_time" {
  type = string
}

variable "charset" {
  type = string
}

################################ IAM ###########################


variable "role_id" {
  description = "The ID of the custom IAM role"
  type        = string
}

############################# Artificat registery ############################

variable "repository_id" {
  type = string
}


variable "repository_location" {
  type = string
}

variable "format" {
  type = string
}