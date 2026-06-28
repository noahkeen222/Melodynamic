variable "subscription" {
  type = object({
    main = string
  })
  description = "subscription ID"
  sensitive   = true
}