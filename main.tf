module "labels" {
  source  = "cloudlovers/labels/google"
  version = "1.0.1"
  enabled = var.enabled

  name        = var.name
  environment = var.environment
  label_order = var.label_order
  extra_tags  = var.extra_tags
}

resource "google_storage_bucket" "main" {
  count                       = var.enabled ? 1 : 0
  name                        = module.labels.id
  location                    = var.location
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
  storage_class               = var.storage_class
  default_event_based_hold    = var.default_event_based_hold
  public_access_prevention    = var.public_access_prevention
  requester_pays              = var.requester_pays

  labels = module.labels.tags
  dynamic "website" {
    for_each = var.website != null ? [var.website] : []
    content {
      main_page_suffix = lookup(website.value, "main_page_suffix", "index.html")
      not_found_page   = lookup(website.value, "not_found_page", "404.html")
    }
  }

  dynamic "cors" {
    for_each = var.cors != null ? [var.cors] : []
    content {
      origin          = lookup(cors.value, "origin", null)
      method          = lookup(cors.value, "method", ["GET", "HEAD", "PUT", "POST", "DELETE"])
      response_header = lookup(cors.value, "response_header", ["*"])
      max_age_seconds = 3600
    }
  }

  dynamic "logging" {
    for_each = var.logging != null ? [var.logging] : []
    content {
      log_bucket = lookup(logging.value, "log_bucket", "")
      log_object_prefix = lookup(logging.value, "log_object_prefix", null)
    }
  }

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  versioning {
    enabled = true
  }


}