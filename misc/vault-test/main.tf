provider "vault" {
  address = "http://ab2fe5d8c6c3642cf893184fc93d6be7-1541439417.us-east-1.elb.amazonaws.com:8200/ui/vault/access/guy-jwt/configuration"
  auth_login_jwt {
    role = "test-role"
  }
}

resource "null_resource" "null" {
}

resource "vault_generic_secret" "example_secret" {
  path = "secret/example"

  data_json = jsonencode({
    username = "your_username",
    password = "your_password",
  })
}

