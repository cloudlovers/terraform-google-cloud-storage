#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "extra_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
}

# Bucket Variables
variable "location" {
  type        = string
  description = "(Required) The GCS location."
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run."
}

variable "uniform_bucket_level_access" {
  type        = bool
  default     = false
  description = "Enables Uniform bucket-level access access to a bucket."
}

variable "storage_class" {
  type        = string
  default     = "STANDARD"
  description = " (Required if action type is SetStorageClass) The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
}

variable "default_event_based_hold" {
  type        = bool
  default     = null
  description = "(Optional) Whether or not to automatically apply an eventBasedHold to new objects added to the bucket."
}

variable "public_access_prevention" {
  type        = string
  default     = ""
  description = "Prevents public access to a bucket. Acceptable values are `inherited` or `enforced`. If `inherited`, the bucket uses public access prevention. only if the bucket is subject to the public access prevention organization policy constraint. Defaults to `inherited`."
}

variable "requester_pays" {
  type        = string
  default     = false
  description = "Enables Requester Pays on a storage bucket"
}

variable "default_kms_key_name" {
    type        = string
    default     = null
    description = "The bucket's encryption configuration"
}

variable "website" {
  type        = map(any)
  default     = null
  description = "Map of website values. Supported attributes: main_page_suffix, not_found_page"
}

variable "cors" {
  type        = any
  default     = []
  description = "The bucket's Cross-Origin Resource Sharing (CORS) configuration. Multiple blocks of this type are permitted."
}

variable "logging" {
  type        = any
  default     = null
  description = "The bucket's Access & Storage Logs configuration."
}

variable "retention_policy" {
  type        = any
  default     = null
  description = "Configuration of the bucket's data retention policy for how long objects in the bucket should be retained."
}

variable "versioning" {
  type = bool
  default = true
  description = "The bucket's Versioning configuration."
}

variable "lifecycle_rules" {
  type        = any
  default     = []
  description = "The bucket's Lifecycle Rules configuration."

}
