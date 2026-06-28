variable "subscription" {
  type = object({
    prod = string
    dev  = string
  })
  description = "subscription ID"
  sensitive   = true
}

variable "management_group" {
  type = object({
    root = object({
      name = string
      display_name   = string
    })
    prod = object({
      name = string
      display_name   = string
    })
    dev = object({
      name = string
      display_name   = string
    })
    shared = object({
      name = string
      display_name   = string
    })
  })
}