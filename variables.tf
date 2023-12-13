variable "name" {
  description = "(Required) The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "soa_record" {
  description = "An soa_record block as defined below. Changing this forces a new resource to be created."
  type = map(object({
    email        = string
    expire_time  = optional(number, 2419200)
    minimum_ttl  = optional(number, 10)
    refresh_time = optional(number, 3600)
    retry_time   = optional(number, 300)
    ttl          = optional(number, 3600)
    tags         = optional(map(string))
  }))
  default = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}
