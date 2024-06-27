variable "v1" {
  default = "Hello world"
}

variable "v2" {
  default = ["Hello world", 100, true]
}

variable "v3" {
  default = {
    abc = 100
    xyz = "Hundred only"
  }
}

variable "fruits" {
  default = {
    apple = {
      price = 100
      quantity = "1kg"
    }
    banana = {
      price = 20
      quantity = "1kg"
    }
  }
}