default = {
    tags = {
        app = "melodynamic"
        owner = "noah"
        managed_by = "terraform"
    }
}

resource_group = {
  name = "melodynamic-dev"
  location = "East US"
  tags = {
    environment = "dev"
  }
}

virtual_network = {
  name = "vnet-dev"
}

subnet_interface = {
  name = "vnet-dev"
  
}

cosmos_db = {
  name = "melodyanmic-db"
  offer_type = "Standard"
  kind = "GlobalDocumentDB"
  free_tier_enabled = "true"
  tags = {
    environment = "shared"
  }
  consistency_policy = {
    consistency_level = "Session"
  }
  geo_location = {
    failover_priority = 0
  }
  capacity = {
    total_throughput_limit = "999"
  }
}