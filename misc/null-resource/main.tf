resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

output "message" {
  value = "Hello world! 2"
}

output "message2" {
  value = "Hello message2!"
}
