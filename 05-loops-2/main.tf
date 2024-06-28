variable "fruit1" {
  default = {
    apple = 10
    banana = 100
  }
}

resource "null_resource" "test1" {
  for_each = var.fruit1
  provisioner "local-exec" {
    command = "echo ${each.key}= ${each.value}"
  }
}

variable "fruit2" {
  default = {
    apple = {
      name = "apple"
      quantity = 10
    }
    banana = {
      name = "banana"
      quantity = 100
    }
  }
}

resource "null_resource" "test2" {
  for_each = var.fruit2
  provisioner "local-exec" {
    command = "echo ${lookup(each.value,"name", "null")} = ${lookup(each.value, "quantity", "null")}"
  }
}