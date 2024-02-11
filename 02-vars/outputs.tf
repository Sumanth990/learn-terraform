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

#Input not declared but expecting default value

#output "value_in_map1" {
#  value = var.v3["abc1"] #provide the key "abc"
#}

output "value_in_map1" {
  value = lookup (var.v3,"abc1", "doesn't exists")
}

output "Second_value_in_lists" {
  value = element(var.v2, 4)
}

output "FruitDetails" {
  value = "Fruit Name - Apple, Quantity - ${var.fruits["apple"]["Quantity"]}"
}