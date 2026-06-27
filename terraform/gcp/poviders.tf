terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.38.0"
    }
  }
}

provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}