output "bucket" {
  value       = one(google_storage_bucket.main)
  description = "All attributes of the created `google_storage_bucket` resource."
}