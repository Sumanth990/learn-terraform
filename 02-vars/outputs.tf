output "v1" {
  value = var.v1
}

output "First_value_in_list" {
  value = var.v2[0]   #index number starts from 0
}

output "Second_value_in_list" {
  value = var.v2[1]
}

#Value in a map
output "value_in_map" {
  value = var.v3["abc"] #provide the key "abc"
}
