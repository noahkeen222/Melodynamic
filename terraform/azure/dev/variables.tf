variable "secrets" {
  type = object({
    subscription = object({
      main = object({
        id = string
      })
    })
    admin = object({
      id = string
    })
    tenant = object({
      id = string
    })
  })
  sensitive   = true
}

variable "default" {
    
    type = object({
      tags = map({ 
        app = string
        owner = string
        managed_by = string
      })
    })
}

variable "resource_group" {
    type = object({
      name = string
      location = string
      tags = map({  
        environment = string
      })
    })
}

variable "virtual_network" {
  type = object({
    name = string
  }) 
}

variable "subnet_interface" {
  type = object({
    name = string
  })
}

variable "cosmos_db" {
    type = object({
      name = string
      offer_type = string
      kind = string
      free_tier_enabled = string
      tags = map({
        environment = string
      })
      consistency_policy = object({
        consistency_level = string
      })
      geo_location = object({
        # location = string
        failover_priority = number
      })
      capacity = object({
        total_throughput_limit = string  
      })
    })
}