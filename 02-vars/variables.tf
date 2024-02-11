variable "v1" {
  default = "Hello World"
}

# A variable list can have different data types like string,number,boolean.

variable "v2" {
  default = [ "Hello world", 100, true]
}

# Map - A variable having multiple keys and values.

variable "v3" {
  default = {
    abc = 100
    xyz = "Two Hundred"
  }
}

variable "fruits" {
  default = {
    apple = {
      price = 10
      quantity = 200
    }
    orange = {
      price = 5
      quantity = 100
    }
  }
}