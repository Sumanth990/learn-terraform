resource "null_resource" "test" {
  count = 10
}

output "test" {
  value = null_resource.test[0]
}

output "test1" {
  value = null_resource.test[10]
}

output "test2" {
  value = null_resource.test.*
}