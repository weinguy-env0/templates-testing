terraform {
  cloud {
    hostname     = "backend-dev.api.dev.env0.com"
    organization = "6f29bb6f-a97d-4bd8-87fa-ddccd6c875e3.0c9e53a4-a29c-45d7-a4b1-8deb00dd924c"
    workspaces {
      name = "null-resource-20637-90806227"
    }
  }
  required_version = "1.5.7"
}

resource "null_resource" "null" {
  count = 1
}
