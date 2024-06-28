#output "v1" {
#  value = var.v1
#}
#
#output "First_value_in_list" {
#  value = var.v2[0]
#}
#
#output "Second_value_in_list" {
#  value = var.v2[1]
#}
#
#output "value_in_map" {
#  value = var.v3["abc"]
#}

#output "value_in_map1" {
#  value = var.v3["abcd"]
#}

#output "value_in_map2" {
#  value = lookup(var.v3,"abcd", "what?")
#}
#
#output "Second_value_in_lists" {
#  value = element(var.v2, 99)
#}

output "Fruits_details" {
  value = "Fruit name - Apple, Quantity - ${var.fruits["apple"]["quantity"]}"
}





