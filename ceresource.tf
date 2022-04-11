provider "google" {
  project     = "my-first-project-341005"
  region      = "us-central1"
  credentials = file("my-first-project-341005-5fdc331c663f.json")
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
