
# terraform-google-storage-bucket

A [Terraform] module to create a on [Google Cloud Services (GCP)](https://cloud.google.com/).

**_This module supports Terraform version 1
and is compatible with the Terraform Google Provider version 4._**

This module is part of our Infrastructure as Code (IaC) framework
that enables our users and customers to easily deploy and manage reusable,
secure, and production-grade cloud infrastructure.


- [Module Features](#module-features)
- [Getting Started](#getting-started)
- [Module Argument Reference](#module-argument-reference)
  - [Google Documentation](#google-documentation)
  - [Terraform Google Provider Documentation:](#terraform-google-provider-documentation)
- [Reporting Issues](#reporting-issues)
- [Contributing](#contributing)
- [License](#license)

## Module Features

This module implements the following terraform resources

- `google_storage_bucket`

and supports additional features of the following modules:

- [terraform-google-labels](https://github.com/cloudlovers/terraform-google-labels)

## Getting Started

Most basic usage just setting required arguments:

```hcl
module "terraform-google-storage-bucket" {
  source = "github.com/cloudlovers/terraform-google-storage-bucket?ref=v0.1.0"

  name = "my-bucket"
}
```

## Module Argument Reference

See [variables.tf] and [examples/] for details and use-cases.


### Google Documentation

- https://cloud.google.com/storage

### Terraform Google Provider Documentation:

- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket


## Reporting Issues

We use GitHub [Issues] to track community reported issues and missing features.

## Contributing

Contributions are always encouraged and welcome! For the process of accepting changes, we use
[Pull Requests]
## License

[![license][badge-license]][apache20]

This module is licensed under the Apache License Version 2.0, January 2004.
Please see [LICENSE] for full details.

<!-- References -->


[badge-license]: https://img.shields.io/badge/license-Apache%202.0-brightgreen.svg
[badge-terraform]: https://img.shields.io/badge/Terraform-1.x-623CE4.svg?logo=terraform
[releases-terraform]: https://github.com/hashicorp/terraform/releases
[badge-tf-gcp]: https://img.shields.io/badge/google-3.x-1A73E8.svg?logo=terraform
[releases-google-provider]: https://github.com/terraform-providers/terraform-provider-google/releases
[apache20]: https://opensource.org/licenses/Apache-2.0
[terraform]: https://www.terraform.io
[gcp]: https://cloud.google.com/
[variables.tf]: https://github.com/cloudlovers/terraform-google-cloud-storage/blob/master/variables.tf
[examples/]: https://github.com/cloudlovers/terraform-google-labels/tree/master/_example
[issues]: https://github.com/cloudlovers/terraform-google-labels/issues
[license]: https://github.com/cloudlovers/terraform-google-cloud-storage/blob/master/LICENSE
[pull requests]: https://github.com/cloudlovers/terraform-google-labels/pulls
