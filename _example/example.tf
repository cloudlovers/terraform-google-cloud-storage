provider "google" {
  project = ""
  region  = "us-central1"
  zone    = "us-central1-c"

}

module "bucket" {
  source = "../"

  name        = "labels"
  environment = "test-sohan"
  label_order = ["name", "environment"]
  extra_tags = {
    managedby = "cloudlovers"
  }

  location = "US"

  website = {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  cors = {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
  }

logging = {
  log_bucket = "testloggling-bucket"
}

}
