terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  
  credentials = file(var.credentials_file)
  project = var.project
  region  = var.region
  zone    = var.zone
  
}	

resource "google_compute_instance" "jkl" {
  name         = var.name
  machine_type = var.machine
  zone         = var.location
 


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    }								
    
    }
