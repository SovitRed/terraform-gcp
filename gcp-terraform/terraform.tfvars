instance_name = "instance-1"
zone = "us-central1-a"
image_name = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20230831"
boot_disk_size = 10
boot_disk_type = "pd-balanced"
machine_type = "e2-medium"
network_tier = "Standard"


########################### VPC ##############################

project_id     = "lucid-sonar-406807"
vpc_name       = "vpc-2"
subnet1_name   = "subnet-1"
subnet1_region = "us-central1"
subnet1_cidr   = "10.0.1.0/24"
subnet2_name   = "subnet-2"  
subnet2_region = "asia-east2"
subnet2_cidr   = "10.0.2.0/24"


####################### Firewall #################

icmp_firewall_name = "vpc-2-allow-icmp"
ssh_firewall_name  = "vpc-2-allow-ssh"

###################### bucket #####################

bucket_name    = "demobucket01r8ft"
location       = "US"
storage_class  = "STANDARD"
uniform_bucket_access = "true"

###################### SQL #############################

instance_database_name            = "my-mysql-instance"
region                            = "us-central1"
tier                              = "db-f1-micro"
database_name                     = "my-mysql-database"
user_name                         = "my-database-user"
user_password                     = "databaseuser123"
authorized_network_cidr           = "%"
expiration_time                   = null
charset                           = "utf8"

####################### IAM #########################
role_id              = "my_custom_role"


############################### Artificat registery ###########################

repository_id       = "demo-repo"
repository_location = "us-central1"
format            = "Docker"
